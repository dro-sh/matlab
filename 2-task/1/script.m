% скрипт без рантайма
[x, y, z] = sphere();
h = surfl(x, y, z); 
set(h, 'FaceAlpha', 0.5)
shading interp
axis equal
direction = [1 0 0];
for i = 1:360    
    rotate(h,direction,1)
    drawnow
end