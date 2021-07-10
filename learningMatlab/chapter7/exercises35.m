function out_of_order = exercises35(order)
len = length(order);
moved = false(1,len);
while any(~moved)
    i = randi(len);
    j = randi(len);
    t = order(i);
    order(i) = order(j);
    order(j) = t;
    moved(i) = true;
    moved(j) = true;
end
out_of_order = order;

end