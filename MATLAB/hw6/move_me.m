function w = move_me(v,a)
%MOVE_ME Summary of this function goes here
%   Detailed explanation goes here
if nargin==2
            w=[v(v~=a) a*(ones(1,sum(v==a)))];
else
    a=0;
    w=[v(v~=a) a*(ones(1,sum(v==a)))];
end
end

