radius = input('Please enter the radius of the circle: ');
[area,circ] = areacirc(radius);
fprintf('For a circle with a radius of %.1f ,\n', radius);
fprintf('the area is %.1f and dthe circumference is %.1f\n',...
    area,circ)