function [ dd ] = day_diff( month1, day1, month2, day2 )
%DAY_DIFF Summary of this function goes here
%   Detailed explanation goes here
                days=[31 28 31 30 31 30 31 31 30 31 30 31];
        if sum([month1 month2]<=12)==2 && sum([day1 day2]<=31)==2 && ...
                sum([month1 month2]>=1)==2 && day1<=days(fix(month1))...
                && day2<=days(fix(month2)) ...
                && sum([month1 month2]>=1)==2 && sum([day1 day2]>=1)==2 ...
                && isscalar(month1) && isscalar(month2) && isscalar(day1) ...
                && isscalar(day2) && month1==fix(month1) && day1==fix(day1) ...
               && day2==fix(day2) && month2==fix(month2)
            
            if month1>month2
                t=month1;
                month1=month2;
                month2=t;
                t=day1;
                day1=day2;
                day2=t;
            end
                
                    
                      dd=sum(days(month1:month2-1));
                    dd=dd-day1+day2;
                        dd=abs(dd);
        else
            dd=-1;
            return ;
            
        end

end

