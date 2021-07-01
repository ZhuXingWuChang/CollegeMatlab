function index = smartseqsearch(vec, key)

len = length(vec);
index = 0;
i = 1;
while i < len && vec(i) ~= key
    i = i + 1;
end

if vec(i) == key
    index = i;
end

end