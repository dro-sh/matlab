for i = 1:20
    p1 = [randf(-10, 10), randf(-10, 10)];
    p2 = [randf(-10, 10), randf(-10, 10)];
    e = rand;

    a = 1/2*sqrt((p2(1)-p1(1))^2+(p2(2)-p1(2))^2);
    b = a*sqrt(1-e^2);
    w = atan2(p2(2)-p1(2), p2(1)-p1(1));
    
    t = linspace(0,2*pi);

    theta = randf(0, 2*pi);

    X = a*cos(t+theta);
    Y = b*sin(t);

    x = (p1(1)+p2(1))/2 + X*cos(w) - Y*sin(w);
    y = (p1(2)+p2(2))/2 + X*sin(w) + Y*cos(w);

    h = fill(x,y,[rand,rand,rand],'FaceAlpha', 0.3,'ButtonDownFcn', @closeCallback);

    hold on;
end

function closeCallback(src, ~)
    delete(src)
end

function r = randf(a, b)
    r = (b-a) * rand + a;
end
