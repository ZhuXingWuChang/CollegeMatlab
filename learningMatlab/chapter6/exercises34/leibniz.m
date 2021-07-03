function result = leibniz()

flag = menu('leibniz公式', '用户指定项数', '自动循环近似');

if flag == 1
    n = input('输入项数n: ');
    while n <= 0 || int32(n) ~= n
        n = input('项数必须为正整数,重新输入n: ');
    end
    result = 0;
    for i = 1:n
        result = result + 4/(2*i - 1)*(-1)^(i-1);
    end
    fprintf('%d项时的近似值为%.4f\n',n,result);
elseif flag == 2
    result = 0;
    i = 0;
    while abs(result - pi) > 0.00001
        i = i + 1;
        result = result + 4/(2*i - 1)*(-1)^(i-1);
    end
    fprintf('当大于等于%d项时,足够近似\n',i);
end

end