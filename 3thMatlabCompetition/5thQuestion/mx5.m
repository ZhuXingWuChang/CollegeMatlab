function [p, nx1, nx0] = mx5(x0)

x1 = cumsum(x0);
z1 = 0.5*( x1(2:end) + x1(1:end-1) );
syms a b

% 模型
model_b = x0(2:end) + a.*z1(1:end);
% 模型的矩阵形式
B = [z1(1:end)', ones(length(z1),1)];
Y = x0(2:end)';
P = [a; b];
model_b_mat = [B*P Y];

p = inv(transpose(B) * B) * transpose(B) * Y;

a = p(1);
b = p(2);
nx1 = zeros(1, length(x0));
for i = 1: length(x0)
    nx1(i) = ( x0(1) - b/a )*exp(-a*i) + b/a;
end

nx0 = zeros(1, length(x0));
nx0(1) = x0(1);
nx0(2:end) = nx1(2:end) - nx1(1:end-1);

end

