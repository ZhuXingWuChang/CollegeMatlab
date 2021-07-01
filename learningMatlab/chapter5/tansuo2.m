% pause(n)表示停止n秒后继续执行,pause()表示程序暂停,用户按下任意键后继续执行
clear,clc
for i = 1:3
    pause(2)
    disp(i)
end