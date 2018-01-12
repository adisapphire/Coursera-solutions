function [ rad,avg ] = sindeg( deg )
%SINDEG Summary of this function goes here
%   Detailed explanation goes here
                       rad= deg*pi;
                       rad=rad/180;
                       rad=sin(rad);
                       avg=sum(sum(rad))/numel(rad);
                       

end

