function outmat = exercises35(rowvec1, rowvec2)
% ����-��������������,����ƴ��Ϊһ�����еľ���(���ಿ����0���)
[r1,c1] = size(rowvec1);
[r2,c2] = size(rowvec2);

if r1 ~= 1 || r2 ~= 1
    disp('������������')
    outmat = [];
else
    cols = max(c1,c2);
    outmat = zeros(cols,2);
    outmat(1:c1) = rowvec1;
    outmat(cols+1:cols+c2) = rowvec2;
    outmat = outmat';
end
