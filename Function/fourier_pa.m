%
% filename : fourier_pa
% Implementing a parabolic wave as a Fourier series
%

function [y] = fourier_pa(n)
         x = -2*pi : 0.01 : 2*pi;
         y = 0;

       for i = 1 : n
           yy = 4/i^2 * (-1)^i * cos(i*x);
           y = y + yy;
       end
      
     plot(x, y+pi^2/3);
     shg;
     grid on;
end