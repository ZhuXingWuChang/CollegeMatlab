function index = seqsearch(vec, key)

len = length(vec);
index = 0;
for i = 1:len
    if vec(i) == key
        index = i;
    end
end

end