function transition(a,b)
F = transpose(b:a);
C = (F-32)*5/9;
data = [F,C];
save form.dat data -ascii
end