function outcell = exercises08(ch,n)
outcell = cell(1,n);
outcell{1} = ch;
for i = 2:n
    outcell{i} = [outcell{i-1},char(double(outcell{i-1}(end)) + 1)];
end
end