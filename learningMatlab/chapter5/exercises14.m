clear,clc
clf
x = rand;
y = rand;
plot(x,y,'o')
hold on
for it = 1:10000
    choic = round(rand*2);
    if choic == 0
        x = x/2;
        y = y/2;
    elseif choic == 1
        x = (x+1)/2;
        y = y/2;
    else
        x = (x+0.5)/2;
        y = (y+1)/2;
    end
    plot(x,y,'o')
    hold on
end