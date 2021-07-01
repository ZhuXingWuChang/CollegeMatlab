% ½Å±¾-¾ØÕóµÄ´æÈ¡
clear,clc
mat = randi([50,100],3,6);
save randfile.dat mat -ascii
mat = randi([50,100],2,6);
save randfile.dat mat -ascii -append
mat = load('randfile.dat');
disp(mat)