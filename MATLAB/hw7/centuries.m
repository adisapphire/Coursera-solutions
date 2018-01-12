function s = centuries(n)
%CENTURIES Summary of this function goes here
%   Detailed explanation goes here
                            if isscalar(n)~=1
                                s='';
                            elseif n>=1 && n<=3000 && n==fix(n)
                       key=[1 5 10];
                       value='IVX';
                       
                       n=ceil(n/100);
                       
                       v=[];
                       
                            s=floor(n/10);
                            v=[v ones(1,s)*10];
                            n=n-s*10;
                           if n>=5
                               if n==9
                                   v=[v 1 10];
                                   n=0;
                               else
                                   v=[v 5];
                                   n=n-5;
                               end
                           end
                          if n<5
                              if n==4
                                  v=[v 1 5];
                              else
                                  v=[v ones(1,n)];
                              end
                          end
                           
                       
                       [~,LOC]=ismember(v,key);
                       s=value(LOC);
                        else
                            s='';
                        end
                  
end

