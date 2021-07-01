clear,clc
limit = input('输入摄氏度(在-16到20度之间): ');
while limit<-16 || limit>20
    limit = input('重新输入: ');
end
fprintf('C     F     \n');
F = 0;
C = (5/9)*(F-32);
while C < limit
    fprintf('%-6.1f%-6.1f\n',C,F)
    F = F + 5;
    C = (5/9)*(F-32);
end