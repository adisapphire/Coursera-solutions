function [ fare ] = fare( d,age )
%FARE Summary of this function goes here
%   Detailed explanation goes here
d=round(d);
            if d<=1
                fare=2;
            elseif d>1  && d<=10
                
                fare=2+(d-1)*0.25;
            else 
              
                fare=2+2.25+(d-10)*0.10;
            end
            
            if age<=18 || age>=60
                fare =fare-fare*0.20;
            end
            
                

end

