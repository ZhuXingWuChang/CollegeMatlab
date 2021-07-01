function indvec = createind(vec)

len = length(vec);
indvec = 1:len;
for i = 1:len-1
    indlow = i;
    for j = i+1:len
        if vec(indvec(j)) < vec(indvec(indlow))
            indlow = j;
        end
    end
    
    temp = indvec(i);
    indvec(i) = indvec(indlow);
    indvec(indlow) = temp;
end

end