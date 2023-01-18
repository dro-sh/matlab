for i = 1:20
    figure(4);
    rng(i);
    C = randn(2,1);
    a = randi(10);
    e = rand;
    b = a*sqrt(1-e^2) ;  
    th = linspace(0,2*pi) ; 
    xe = C(1)+a*cos(th) ; 
    ye = C(2)+b*sin(th) ; 
    plot(xe,ye,'Color',[rand,rand,rand]);
    hold on
end
