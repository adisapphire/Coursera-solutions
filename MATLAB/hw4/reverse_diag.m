function [ m ] = reverse_diag( n )
%REVERSE_DIAG Summary of this function goes here
%   Detailed explanation goes here
            m=zeros(n);
            m(n:n-1:end-n+1)=1;
            
            

end

