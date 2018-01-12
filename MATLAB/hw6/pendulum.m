function T = pendulum(L,a0)
%PENDULUM Summary of this function goes here
%   Detailed explanation goes here

            t=1e-6;
            theta=abs(a0);
            av=0;
            T=0;
            if L>0
            while theta>0
            alpha = (-9.8)*(sin(theta))/L;
            
            av=av+alpha*t;
            theta=theta+av*t;
            T=T+t;
            end
            T=T*4;
            end
            

end

