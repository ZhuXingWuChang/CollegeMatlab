function outind = binsearch(vec, key)

low = 1;
high = length(vec);
outind = 0;

while low <= high && outind == 0
    mid = floor((low+high)/2);
    if vec(mind) == key
        outind = mid;
    elseif key < vec(mid)
        low = mid + 1;
    else
        high = mid + 1;
    end
end

end