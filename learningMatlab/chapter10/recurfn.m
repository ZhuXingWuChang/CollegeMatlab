function outvar = recurfn(num)

if num < 0
    outvar = 2;
else
    outvar = 4 + recurfn(num-1);
end
end