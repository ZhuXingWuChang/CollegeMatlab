function area_ = area(x, y)
[a, b, c] = distance(x, y);
s = (a+b+c)/2;
area_ = sqrt(s*(s-a)*(s-b)*(s-c));
end

function [a, b, c] = distance(x, y)
a = sqrt( (x(1)^2 - x(2)^2)^2 + (y(1)^2 - y(2)^2)^2 );
b = sqrt( (x(2)^2 - x(3)^2)^2 + (y(2)^2 - y(3)^2)^2 );
c = sqrt( (x(3)^2 - x(1)^2)^2 + (y(3)^2 - y(1)^2)^2 );
% disp(a)
% disp(b)
% disp(c)
end