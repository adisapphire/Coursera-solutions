function [ p,ind ] = max_product( v,n )
%MAX_PRODUCT Summary of this function goes here
%   Detailed explanation goes here
            p=0;
            ind=-1;
            if length(v)>=n
        for i=1:length(v)-n+1
            temp=1;
            for j=i:n-1+i
            temp=temp*v(j);
            end
            if temp>p || i==1
                p=temp;
                ind=i;
            end
        end
            end
            

end

