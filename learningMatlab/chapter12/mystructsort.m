function outv = mystructsort(structarr)

for i = 1:length(structarr)-1
    indlow = i;
    for j = i+1:length(structarr)
        if struct(j).price < structarr(indlow).price
            indlow = j;
        end
    end
    temp = structarr(i);
    structarr(i) = structarr(indlow);
    structarr(indlow) = temp;
end

outv = structarr;

end