% ����-����1Ϊһ������,����2�������е�ÿһ�����ظ�i��,���ر��ظ��Ľ������
function result_vec = exercises35(vec, num)
result_vec = [];
for i = 1:length(vec)
    for j = 1:num
        result_vec = [result_vec vec(i)];
    end
end
end