%Peacock
Z=-1.1+.020211004;
col=9;
m=1000;
cx=-1;
cy=-0.5;
lspan=1.75;

x=linspace(cx-lspan, cx+lspan, m);
y=linspace(cy-lspan, cy+lspan, m);
[x,y] = meshgrid(x,y);
C=x+1i*y;

for k=1:col
    Z=conj(Z).^(Z)+C;
    W=exp(-abs(Z));
end

pcolor((W));
shading interp
axis([0 800 200 1000])
axis equal
c=hsv(12);d=flip(c);
colormap([d;c;d])