clear,clc
cirarea = @(radius) pi*radius.^2;
rectgarea = @(length,width) length.*width;
trangarea = @(base,height) 1/2*base.*height;
save tempconverters cirarea rectgarea trangarea