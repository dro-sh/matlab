function testscroll
    figure('WindowScrollWheelFcn', @figScroll); 
    sphere; 
    axis manual;

function figScroll(~,evnt)
    direction = [1 0 0];
    rotate(findobj('type','Surface'),direction,sign(evnt.VerticalScrollCount)); 
    drawnow
