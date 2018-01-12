function mbd = spherical_mirror_aberr(fn,D)
%SPHERICAL_MIRROR_ABERR Summary of this function goes here
%   Detailed explanation goes here
                    f=D*fn;
                    
                    xd=0.01;
                    x=0:xd:D/2;
                    s=asin(x/(2*f));
                    m1=(1./cos(s))-1;
                    d=2*f*(tan(2*s).*m1);
                    mbd=((8*xd)*sum((x.*d)))/(D^2);

end

