clear,clc
limit = input('�������϶�(��-16��20��֮��): ');
while limit<-16 || limit>20
    limit = input('��������: ');
end
fprintf('C     F     \n');
F = 0;
C = (5/9)*(F-32);
while C < limit
    fprintf('%-6.1f%-6.1f\n',C,F)
    F = F + 5;
    C = (5/9)*(F-32);
end