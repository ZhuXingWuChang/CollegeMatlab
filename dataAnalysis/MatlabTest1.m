st = -pi : pi/100 : pi;
r = 1 + cos(st);
%直角坐标系
figure(1);
ezplot( 'x^2+y^2 - (x^2+y^2)^(1/2) + x ', [-3,3] );
title( '直角坐标系' );
%极坐标系
figure(2);
polar( st, r, '-r' );
title( '极坐标系' );
%蒙特卡罗法
count = 0;
n = 666666;
for a = 1:n
    x = 4 * rand() - 2; %定义横向区间[-2,2]
    y = 4 * rand() - 2; %定义纵向区间[-2,2]
    t = sqrt( x^2 + y^2 );  %在里面随机作一向量
    st = tan( x / y ); %求θ角
    if t <= 1 + cos(st)   %统计r落在rou里面的次数
        count = count + 1;
    end
end
area = 4*pi * count / n   %求得面积