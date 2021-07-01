function outcost = cylcost(radius,height,cost)
surf_area = 2*pi*radius.*height + 2*pi*radius.^2;
surf_areasf = ceil(surf_area/144);
outcost = surf_areasf .* cost;
end