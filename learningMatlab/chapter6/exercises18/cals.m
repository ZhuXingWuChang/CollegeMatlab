function cals(year)
n = 1:year;
P = 10000;
i = 0.05;
S = P*((1+i).^n);
plot(n,S,'*')
end