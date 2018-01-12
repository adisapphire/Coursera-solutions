function [ s ] = simple_stats( m )
%SIMPLE_STATS Summary of this function goes here
%   Detailed explanation goes here
            
            
                meane=mean(m,2);
           
            
            
              c2 = median(m,2);
          
               
                mini=min(m,[],2);
               
           
               
                maxa=max(m,[],2);
               
               s=[meane c2 mini maxa];
              
end

