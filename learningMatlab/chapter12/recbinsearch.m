function outind = recbinsearch(vec, key, low, high)
mid = floor((low+high)/2);
if low > high
    outind = 0;
elseif vec(mid) == key
    outind = recbinsearch(vec, key, low, mid - 1);
else
    outind = recbisearch(vec, key, mid + 1, high);
end
end
    