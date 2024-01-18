r = @(u,v)2+sin(7.*u+5.*v);
funx = @(u,v)r(u,v).*cos(u).*sin(v);
funy = @(u,v)r(u,v).*sin(u).*sin(v);
funz = @(u,v)r(u,v).*cos(v);

fsurf(funx,funy,funz,[0 2*pi 0 pi], 'EdgeColor','none','MeshDensity', 500)
colormap("turbo")
grid off
axis off
set(gcf, 'Color', '#010141')
camlight