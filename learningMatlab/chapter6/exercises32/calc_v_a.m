function [V, A] = calc_v_a(n, h, S)
V = n/4*h*S^2*cot(pi/n);
A = n/2*S^2*cot(pi/n)+n*S*h;
end