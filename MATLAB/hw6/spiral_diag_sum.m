function [ sum ] = spiral_diag_sum( n)
%SPIRAL_DIAG_SUM Summary of this function goes here
%   Detailed explanation goes here
                n=(n-1)/2+1;
                s=1;d=2;sum=0;
                for i=1:4*(n-1)
                       s=s+d;
                       
                       
                       if mod(sqrt(s),1)==0
                           d=d+2;
                           
                       end
                       sum=sum+s;
                end
            sum=sum+1;
end

