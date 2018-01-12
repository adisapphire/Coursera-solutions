function [ app ,k ] = approximate_e( delta )
%APPROXIMATE_E Summary of this function goes here
%   Detailed explanation goes here
            app=exp(1)-delta;
            S=1;
            m=0;
            while S~=app && S<app
            s=1;
            m=m+1;
            for i=1:m
                s=s*i;
            end
            
            S=S+(1/s);
            end
            k=m;
            app=S;
                
            

end
