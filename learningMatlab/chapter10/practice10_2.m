function practice10_2(fnstr, x)

fn = str2func(fnstr);
y = fn(x);
plot(x,y,'g+')
xlabel('x')
ylabel('fn(x)')
title(fnstr)
end
