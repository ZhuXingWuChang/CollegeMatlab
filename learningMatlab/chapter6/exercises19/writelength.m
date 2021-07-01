function writelength(length)
FEET_PER_METER = 0.3048;
feet = length*FEET_PER_METER;
mat = [length', feet'];
save matrix.dat mat -ascii
end