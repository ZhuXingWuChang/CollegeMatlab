st = -pi : pi/100 : pi;
r = 1 + cos(st);
%ֱ������ϵ
figure(1);
ezplot( 'x^2+y^2 - (x^2+y^2)^(1/2) + x ', [-3,3] );
title( 'ֱ������ϵ' );
%������ϵ
figure(2);
polar( st, r, '-r' );
title( '������ϵ' );
%���ؿ��޷�
count = 0;
n = 666666;
for a = 1:n
    x = 4 * rand() - 2; %�����������[-2,2]
    y = 4 * rand() - 2; %������������[-2,2]
    t = sqrt( x^2 + y^2 );  %�����������һ����
    st = tan( x / y ); %��Ƚ�
    if t <= 1 + cos(st)   %ͳ��r����rou����Ĵ���
        count = count + 1;
    end
end
area = 4*pi * count / n   %������