function testrecursion
persistent x
x=123;

disp(fun)

function y = fun(level)
persistent x;
if isempty(x)
	x=0;
else
x = x + 1;
end
if ~nargin
	level = 0;
end
if level < 5
%	assert(isequal(x, level))
	level=level+1;
%	y = [fun(level) x];
	y = [x fun(level)];
else
	y = level;
end
