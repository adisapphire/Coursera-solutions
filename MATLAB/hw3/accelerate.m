function amag = accelerate( F1,F2,m )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
      amag=0; 
       amag=F1+F2;
     amag=amag.^2;
     amag=sum(amag);
     amag=sqrt(amag);
     amag=amag/m;
     

end

