function [ ntr ] = dial( str )
%DIAL Summary of this function goes here
%   Detailed explanation goes here
                        if sum(class(str)=='char')~=4
                                ntr=0;
                    elseif str(1)~='0' && length(str)<=16
                arr=[{'1'};{'2ABC'};{'3DEF'};{'4GHI'};{'5JKL'};{'6MNO'};...
                    {'7PQRS'};{'8TUV'};{'9WXYZ'};{'0'}];
                ntr=str;
            for j=1:length(str)
                s=str(j);
                if (s>=48 && s<=57)||(s>=65 && s<=90)
                for i=1:10
                   
                    if sum(arr{i}==s)>0
                        if i==10
                            i=0;
                        end
                        ntr(j)=num2str(i);
                        break;
                    end
                end
                else 
                    ntr='0';
                    break;
                end
            end
                    ntr=str2num(ntr);
                    ntr=uint64(ntr);
                    else
                        ntr=0;
                        end
                    
end

