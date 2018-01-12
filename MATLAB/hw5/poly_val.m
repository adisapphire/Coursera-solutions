function p = poly_val(c0,c,x)
%POLY_VAL Summary of this function goes here
%   Detailed explanation goes here
            if isempty(c)
                p=c0;
            elseif isscalar(c)
                p=c0+c*x;
            else
                m=length(c);
                c=c(:);
                c=c'.*(x.^(1:m));
               p= c0+sum(c);
                
            end
            
end

