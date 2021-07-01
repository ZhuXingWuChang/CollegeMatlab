function [m,os]=mingling_and_zijixie(sd)
    %m为中位数median，os为次序统计量order statistics，sd为样本数据sample data
    os=bubble_sort(sd);
    m=median(sd);
end
function y=bubble_sort(x)
    x_len=length(x);
    for i=1:x_len-1
        for j=1:x_len-i
            if(x(j)>x(j+1))
                [x(j),x(j+1)]=swap(x(j),x(j+1));
            end
        end
        disp([num2str(i),'.Sort:x=',num2str(x)]);
    end
    y=x;
end
function [a,b]=swap(x,y)
    a=y;
    b=x;
end