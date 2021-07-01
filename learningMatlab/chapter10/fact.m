function facn = fact(n)
if n == 1
    facn = 1;
else
    facn = n*fact(n-1);
end
end