function [a,v,stdt,cov]=mingling(sd)
    %mΪ��λ��median��osΪ����ͳ����order statistics��sdΪ��������sample data
    %aΪƽ����average��vΪ����variance��stdvΪ��׼��standard deviation
    %covΪ����ϵ��coefficient of variation
    os=sort(sd);
    a=mean(os);
    v=var(os,0);
    stdt=std(os,0);
    cov=stdt./a;
end