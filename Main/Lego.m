Z = max(round(membrane*24),0);
b = bar3(Z);
view([35 30]);
cmap = lines(8);
colormap([1,1,1; cmap])
axis equal off
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
end