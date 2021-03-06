A=[6484.00   4100.60   794.00    8101.40    112704.0  46991.00  2664.90
   6858.00   4954.30   859.40    8300.10    114333.0  38474.00  2937.10
   8087.10   5146.40   1015.10   9415.60    115823.0  55472.00  3149.48
   10284.50  5588.00   1415.00   10993.70   117171.0  51333.00  3483.37
   14143.80  6605.10   2284.70   12462.10   118517.0  48829.00  4348.95
   19359.60  9169.20   3012.60   16264.70   119850.0  55043.00  5218.10
   24718.30  11884.60  3819.60   20620.00   121121.0  45821.00  6242.20
   29082.60  13539.80  4530.50   24774.10   122389.0  46989.00  7407.99
   32412.10  13852.50  4810.60   27298.90   123626.0  53429.00  8651.14
   33387.90  14241.90  5231.40   29152.50   124761.0  50145.00  9875.95
   35087.20  14106.20  5470.60   31134.70   125786.0  49981.00  11444.08
   39047.30  13873.60  5888.00   34152.60   126743.0  54688.00  13395.23
   42374.60  14462.80  6375.40   37595.20   126743.0  52215.00  16386.04
   45975.20  14931.50  7005.00   42027.10   128453.0  47119.00  18903.64
   53092.90  14870.10  8181.30   45842.00   129227.0  54506.00  21715.25];
%(1)建立财政收入的多元回归分析模型，并对该模型进行显著性检验
[n,p]=size(A);
x=[ones(n,1),A(:,1),A(:,2),A(:,3),A(:,4),A(:,5),A(:,6)];
y=A(:,7);                                                                                                                                                                                                                                                   
[b,bint,r,rint,stats]=regress(y,x);
b,bint,stats
%输出结果说明，b就是模型中的参数b1,…,b6
TSS=y'*(eye(n)-1/n*ones(n,n))*y;
H=x*inv((x'*x))*x';
ESS=y'*(eye(n)-H)*y;
RSS=y'*(H-1/n*ones(n,n))*y;
MSR=RSS/p;
MSE=ESS/(n-p-1);
Fa=finv(0.95,p,n-p-1);
F0=(RSS/p)/(ESS/(n-p-1));
R2=RSS/TSS
x2=[A(:,1),A(:,2),A(:,3),A(:,4),A(:,5),A(:,6)];
stepwise(x2,y,[1,2,3,4,5,6],0.05,0.10)