function [r] = jisuan(r,u)
    r = solve('exp(4.3/r)=(u/10)*exp(0.81/4.3)','r');
end