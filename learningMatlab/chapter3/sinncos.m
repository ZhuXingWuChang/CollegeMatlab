clear,clc
clf
x = 0: (2*pi)/40: 2*pi;
y = sin(x);
plot(x,y,'ro') % ��һ��sinͼ��
hold on % �������滭�õ�sinͼ��
y = cos(x); 
plot(x,y,'b+') % ��һ��cosͼ��

legend('sin','cos')
xlabel('x')
ylabel('sin(x) or cos(x)')
title('sin and cos on one graph')

% �����ʹ��hold on,Ҳ���Ի�������ͼ��,ʹ����������
% plot(x, sin(x), 'ro', x, cos(x), 'b+')