nSteps = 500;
maxIter = 64;

xSpan = linspace(-1.242,-0.254,nSteps);
ySpan = linspace(0.306,1.085,nSteps);

[x,y] = meshgrid(xSpan,ySpan);

z0 = x + sqrt(-1)*y;
z = z0;
m = zeros(size(z));
k = 2;

for n = 1:maxIter
    z=sin(k*z);
    m(isnan(z) & ~m)=n;
end

imagesc(xSpan,ySpan,m)
axis xy equal off
colormap(jet)