function [m,os]=mingling(sd)
    %mΪ��λ��median��osΪ����ͳ����order statistics��sdΪ��������sample data
    os=sort(sd);
    m=median(sd);
end