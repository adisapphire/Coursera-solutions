function [ oi ] = income( r,p )
%INCOME Summary of this function goes here
%   Detailed explanation goes here
        oi=r.*p;
        oi=oi*96;
        oi=sum(oi);

end

