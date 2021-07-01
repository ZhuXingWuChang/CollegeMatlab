% 函数-英里/小时(mile/h)到米/秒(m/s)的转换
% 1mile=5280feet, 1feet=0.3048m, 1h=3600s
function m_per_s = exercises27(mile_per_h)
feet_per_h = mile_per_h .* 5280;
feet_per_s = feet_per_h ./ 3600;
m_per_s = feet_per_s .* 0.3048;
end