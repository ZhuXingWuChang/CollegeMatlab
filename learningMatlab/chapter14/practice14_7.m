clear,clc
x=sym('x')
a=sym(x^3-2*x^2+1)
b=sym(x^3+x^2)
res=a+b
p=sym2poly(res)
polyval(p,2)
sym(1/2+1/4)
solve(x^2-16)