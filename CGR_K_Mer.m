function [lx,ly] = CGR_K_Mer(sequence)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%sequence='GTCT';
z=strlength(sequence);
lx=1;
ly=1;
for i=1:z
    if i==1
        nuec_base=sequence(z);
        if(nuec_base=='A')
            lx=1;
            ly=1;
        elseif(nuec_base=='G')
            lx=2;
            ly=1;
        elseif(nuec_base=='C')
            lx=1;
            ly=2;
        elseif(nuec_base=='T')
            lx=2;
            ly=2;
        end
    else
        baseInterval=power(2,i)/2;
        nuec_base=sequence(z-i+1);
        if(nuec_base=='G')
            lx=lx+baseInterval;
        elseif(nuec_base=='C')
            ly=ly+baseInterval;
        elseif(nuec_base=='T')
            lx=lx+baseInterval;
            ly=ly+baseInterval;
        end
    end
end
end

