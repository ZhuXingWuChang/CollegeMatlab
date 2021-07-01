clear,clc
radius = 8.8
height = 10.1
N = 0.03;
r = rand(1,10).*(2*N)+radius-N;
h = rand(1,10).*(2*N)+height-N;
r = r(r>0)
h = h(h>0)
V = pi.*(r.^2).*h