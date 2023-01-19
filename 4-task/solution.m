syms a b c 
syms d e f g [2 1];

%d = [-0.5; 0];
%f = [0.5; 0];
%e = [0; sqrt(3) / 2];
d = [0; 0];
f = [1; 0];
e = [0.5; sqrt(3) / 2];

a = norm(g - d);
b = norm(g - e);
c = norm(g - f);

alp = acos((d - g)' * (f - g) / (norm(d - g) * norm(f - g))) / pi * 180;
bet = acos((a^2 + c^2 - b^2) / (2 * a * c)) / pi * 180;

[g1, g2] = meshgrid(-1:0.01:2, -1:0.01:2);

s = eval(alp - bet);

%eval(alp - bet);

surfl(g1, g2, real(s))
shading flat
colormap gray

res = s(150, 150);

res

