function dydt = lorenzode( t, u )
 global r
        sigma = 10;
        b     = 8/3;
        %r     = 28;
        dydt = [ sigma * (u(2)-u(1));
                 r*u(1) - u(2) - u(1)*u(3);
                 u(1)*u(2) - b*u(3) ];
