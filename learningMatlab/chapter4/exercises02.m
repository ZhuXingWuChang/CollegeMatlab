function outhour = exercises02(inhour)
% 函数-接受一个整数(1~12),返回下一个小时(12返回1)

if inhour < 12
    outhour = inhour + 1;
else
    outhour = 1;
end

end