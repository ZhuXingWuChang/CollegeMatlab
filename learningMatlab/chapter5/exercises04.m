clear,clc

a = 0;
for i = 1:9
    a = a*10 + i;
    fprintf('%d ¡Á %d + %d = %d\n',a,8,i,a*8+i)
end
