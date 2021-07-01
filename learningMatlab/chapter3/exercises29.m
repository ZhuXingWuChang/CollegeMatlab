% 函数-接受总压力和静态压力,返回水的流速
function V = exercises29(Pt,Ps)
V = 1.016 * sqrt(Pt-Ps);
end