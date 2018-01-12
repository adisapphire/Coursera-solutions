function [ orms ] = odd_rms(nn)
%ZERO_STAT Summary of this function goes here
%   Detailed explanation goes here
        m=1:2:2*nn;
        orms=m.^2;
        orms=sqrt(sum(orms)/numel(m));

end


