function [v,d]=tzz(A)
    n = length(A);  %�õ� n=����=����
    syms lan;
    tzfc = ( det(A - lan*eye(n)) == 0 );
    v = solve( tzfc, lan);  %�������ֵv
    
    qdcg = unique(v);   %ȥ���ظ�
    if length(qdcg) == length(v)
        flag = 1;
    else
        flag = 0;
    end
    
    d=[];
    for k = qdcg'   %forѭ���޷�����������
        jtzfc = A - k*eye(n);
        x = null(jtzfc);    %�õ�һ�������ϵ
        d = [ d, x];
    end     %���һ����������d
    
    fprintf('(1)����ֵV=\n');
    disp(v);
    fprintf('(2)������������D=\n');
    disp( double(d) );
    
    %�ж϶Խǻ�
    if flag == 1
        fprintf('(3)�þ����ܶԽǻ�\n');
    else
        fprintf('(3)�þ����ܶԽǻ�\n');
    end
end