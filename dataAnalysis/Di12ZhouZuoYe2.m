y = [ 20, 35, 70, 105, 120]';
x = [ 1.5, 2.0, 3.5, 5.0, 6.0]';
plot(x,y,'*')
xlabel('劳动生产率x(万元/人)')
ylabel('工业增加值y(万元)')

Lxx = sum( (x-mean(x)).^2 )
Lxy = sum( (x-mean(x)).*(y-mean(y)) )
Lyy = sum( (y-mean(y)).^2 )

p = polyfit(x,y,1)

b1 = p(1);
b0 = p(2);
y1 = b1*x + b0;
hold on
plot(x,y1,'r')
RSS = sum( (y1-mean(y)).^2 );
ESS = sum( (y-y1).^2 );
F = RSS / ESS / (size(x,1)-2)