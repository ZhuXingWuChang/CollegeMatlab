% �� "������ѧ" ��һϵ�� "����/΢��" ����
% ע��: �ɻ�����Ϊ"΢��"����"��",�ڲ�׷����ѧ���ʵ�ǰ����.

clear,clc

syms x
f = 3*x.^2 - 4*x + 2;

indefinite_integral = int(f); % ��������
definite_integral = int(f,2,5); % ������
area = int(abs(f),2,5); % ��ͼ�����
derivative = diff(f); % ��΢��(��)
value = subs(derivative,'x',2); % ��x=2ʱ,��������ֵ
