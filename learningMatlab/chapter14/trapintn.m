function intsum = trapintn(fnh, lowrange, highrange, n)

intsum = 0;
increm = (highrange - lowrange) / n;
for a = lowrange:increm:highrange-increm
    b = a + increm;
    intsum = intsum + (b - a) * (fnh(a) + fnh(b)) / 2;
end

end