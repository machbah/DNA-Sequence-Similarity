function [reducedMatrix] = MatrixReduction(inputMatrix,reductionRate)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[r c]=size(inputMatrix);
step=sqrt(reductionRate);
dimension=floor(r/step);
reducedMatrix=zeros(dimension, dimension, 'double');
row=1;
for i=1:step:r-step
    col=1;
    for j=1:step:c-step
        tm=inputMatrix(i:i+step-1,j:j+step-1);
        %newScale=double(max(max(tm)))-double(min(min(tm)))-mean2(tm);
        newScale=mean2(tm);
        reducedMatrix(row,col)=newScale^2;
        col=col+1;
    end
    row=row+1;
end
end

