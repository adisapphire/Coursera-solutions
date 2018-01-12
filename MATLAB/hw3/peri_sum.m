function [ s ] = peri_sum( m )
%PERI_SUM Summary of this function goes here
%   Detailed explanation goes here
        r=sum(m,1);
        c=sum(m,2);
       s=r(1)+r(end)+c(1)+c(end)-m(1,1)-m(1,end)-m(end,1)-m(end,end);

end

