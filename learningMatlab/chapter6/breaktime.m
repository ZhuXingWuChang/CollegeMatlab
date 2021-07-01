function [hours, minutes, secs] = breaktime(totseconds)
hours = floor(totseconds/3600);
remsecs = rem(totseconds, 3600);
minutes = floor(remsecs/60);
secs = rem(remsecs, 60);
end