clear,clc
c1 = complex(0,2);
c2 = 3 + 2i;
c3 = sqrt(-4);
% ���c2��ʵ�����鲿
c2r = real(c2);
c2i = imag(c2);
% ��ӡc1
disp(c1)
% ��ӡc2
fprintf('%d+%di\n\n',real(c2),imag(c2))
% ���
disp(c1==c2)
disp(c2==c3)
disp(c1==c3)
% ����
disp(c1-c2)
isreal(c1-c2)
% �˷�
disp(c2*c3)
% ����� �� ģ
disp(conj(c2))
disp(abs(c2))
% ������
theta1 = angle(c1);
r1 = abs(c1);
fprintf('c1 = %de^(%.2fi)\n\n', r1, theta1)
% ����
plot(c2,'r*','MarkerSize',20)