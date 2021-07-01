function practice8_5(cyls)

for i = 1:length(cyls)
    [vol,perimeter] = cylvol(cyls(i).dimensions);
    fprintf('�ͺ�%c, ���%.2f, ���%.2f\n', ...
        cyls(i).code, vol, perimeter)
end
end

function [cvol,cperimeter] = cylvol(dims)

cvol = pi * dims.rad^2 * dims.height;
cperimeter = 2*pi*dims.rad^2 + 2*pi*dims.rad*dims.height;
end