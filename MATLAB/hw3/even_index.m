function [ even ] = even_index( m )
%EVEN_INDEX Summary of this function goes here
%   Detailed explanation goes here
        
even=m(2:2:size(m,1),2:2:size(m,2));
end

