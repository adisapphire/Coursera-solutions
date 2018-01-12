function [ Q ] = intquad( n,m )
%ZERO_STAT Summary of this function goes here
%   Detailed explanation goes here
        a=zeros(n,m);
        Q=[a a+1;(a+1)*2 (a+1)*3];
        

end
