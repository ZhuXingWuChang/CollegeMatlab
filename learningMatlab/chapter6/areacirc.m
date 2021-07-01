function [area, circum] = areacirc(rad)

area = pi * rad .* rad;
circum = 2 * pi * rad;
end