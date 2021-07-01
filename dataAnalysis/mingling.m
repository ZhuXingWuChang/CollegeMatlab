function [m,os]=mingling(sd)
    %m为中位数median，os为次序统计量order statistics，sd为样本数据sample data
    os=sort(sd);
    m=median(sd);
end