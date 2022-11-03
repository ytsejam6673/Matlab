figure('color','k')
axis equal off
rotate(0,0,90,10)

function rotate(x1,y1,t,d)
         x2=x1+cosd(t)*d;
         y2=y1+sind(t)*d;
   if d~=0
      line([x1 x2],[y1 y2],'color',rand(1,3),'LineWidth',2);
      rotate(x2,y2,t+20,d-1);
      rotate(x2,y2,t-20,d-1);
   end
end
