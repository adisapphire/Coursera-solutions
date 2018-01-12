function [ s ] = sum3and5muls( n )
%SUM3AND5MULS Summary of this function goes here
%   Detailed explanation goes here
        
        s3=0:3:n;
        s5=0:5:n;
        s35=0:15:n;
       
        s=sum(s3)+sum(s5)-sum(s35);

end

