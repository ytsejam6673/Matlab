[I,L]=meshgrid(linspace(-1,1,4000));
t=I*pi;
f=L*pi;

x=(2+cos(t)).*cos(f);
y=(2+cos(t)).*sin(f);
z=sin(t);

surf(x,y,z,z+5*(z-0.4>cos(6*f).*cos(t/2)/3));
colormap([pink; pink]);
shading interp;
axis equal off;
set(gcf,'color',[0.8 0.8 1]);
view([0 40])