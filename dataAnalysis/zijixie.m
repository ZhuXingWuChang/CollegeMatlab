function [m,os]=zijixie(sd)
    %mΪ��λ��median��osΪ����ͳ����order statistics��sdΪ��������sample data
    %bubble_sort()Ϊð����������my_median()Ϊ����λ��������swapΪ��������
    os=bubble_sort(sd);
    m=my_median(os);
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
function t=my_median(os)
    os_len=length(os);
    if(rem(os_len,2)==1)
        t=os((os_len+1)/2);
    else
        t=(os(os_len/2)+os(os_len/2+1))/2;
    end
end