hist3(randn(1e3,2),'CDataMode','auto', 'EdgeColor', 'flat', 'FaceColor','flat');
hold on 

h = findobj(gca,'Type','Surface');
h.FaceAlpha = 0.5;

direction = [0 0 1];

d = 1;

for i=1:360
    rotate(h,direction,d);
    pause(0.05);
end
