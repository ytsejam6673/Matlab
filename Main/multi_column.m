t = 0:pi/64:3*pi;
dPhi = pi/16;
set(gca,'LineStyleOrder',{'-','--',':','-.'})
hold on

for ii = 1:18
    plot(t,sin(t+dPhi*ii))
    legend_str{ii} = num2str(ii);
end
ylim([-1.15 1.6])

legend(legend_str,'Location','NorthWest','NumColumns',6)