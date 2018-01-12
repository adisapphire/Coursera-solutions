function [ per ] = zero_stat(n)
%ZERO_STAT Summary of this function goes here
%   Detailed explanation goes here
       per=numel(n(n==0));
       tot=numel(n);
       per=per/tot;
       per=per*100;
       

end

