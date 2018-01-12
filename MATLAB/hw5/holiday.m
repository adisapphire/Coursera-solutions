function [ yes ] = holiday( month , day )
%HOLIDAY Summary of this function goes here
%   Detailed explanation goes here
            boolean yes;
           
            if (month==1 && day==1)||(month==12 && day==31)...
                    ||(month==12 && day==25)||(month==7 && day==4)
                yes= true;
                
            else
               yes= false;
            end

end

