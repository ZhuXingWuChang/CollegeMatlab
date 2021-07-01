function indvec = practice12_4(packstruct)

len = length(packstruct);
indvec = 1:len;
for i = 1:len-1
    indlow = i;
    for j = i+1:len
        if packstruct(indvec(j)).cost < packstruct(indvec(indlow)).cost
            indlow = j;
        end
    end
    
    temp = indvec(i);
    indvec(i) = indvec(indlow);
    indvec(indlow) = temp;
end

end