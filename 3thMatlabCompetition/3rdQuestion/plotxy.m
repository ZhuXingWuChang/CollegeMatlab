function plotxy

f1 = 'y^2 = 2*x';
f2 = 'y = x - 4';
figure(1)
ezplot(f1,[-9,9])
hold on 
ezplot(f2,[-9,9])
axis([-10, 10, -10, 10])
grid on

end

