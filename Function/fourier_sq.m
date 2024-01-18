%
% filename : fourier_sq
% Implementing a square wave as a Fourier series
%

function [y] = fourier_sq(n)
         x = -2*pi : 0.01 : 2*pi;
         y = 0;

       for i = 1 : n
           yy = 2 / pi / (2*i-1) * sin((2*i-1)*x);
           y = y + yy;
       end

     plot(x, y+1/2);
     shg;
     grid on;     
end