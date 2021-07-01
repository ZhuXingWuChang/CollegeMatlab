clear,clc
degrad = input('Enter angle and d/r:', 's');
angle = degrad(1:end-1);
dorr = degrad(end);

while dorr ~= 'd' && dorr ~= 'r'
    disp('Error! Enter d pr r with the angle.')
    degrad = input('Enter angle and d/r:', 's');
    angle = degrad(1:end-1);
    dorr = degrad(end);
end

anglenum = str2double(angle);
fprintf('The sine of %.1f ', anglenum)

if dorr == 'd'
    fprintf('degrees is %.3f.\n', sind(anglenum))
else
    fprintf('radians is %.3f.\n', sin(anglenum))
end