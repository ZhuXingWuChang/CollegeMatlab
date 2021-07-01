function [a,v,stdt,cov]=mingling(sd)
    %m为中位数median，os为次序统计量order statistics，sd为样本数据sample data
    %a为平均数average，v为方差variance，stdv为标准差standard deviation
    %cov为变异系数coefficient of variation
    os=sort(sd);
    a=mean(os);
    v=var(os,0);
    stdt=std(os,0);
    cov=stdt./a;
end