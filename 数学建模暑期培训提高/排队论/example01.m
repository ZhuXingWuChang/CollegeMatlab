clear,clc
% 考虑一个单服务台排队模型M/G/1。顾客到达服从泊松分布，顾客到达率
% λ=1/6(人/min)，服务时间t(单位：min)服从[3,6]上的均匀分布。试求
% 该排队系统的主要运行指标。
lambda = 1/6;   % 平均到达率
numCust = linspace(50,5000,100); % 顾客总书向量,包含100个值
[Ls,Lq,Ws,Wq] = deal(zeros(100,50));
for i = 1:numel(numCust)
    n = numCust(i);     % 第i个顾客数
    % 对每一个指定的顾客总数,重复50次模拟
    for j = 1:50
        x = exprnd(1/lambda, 1, n); % n个顾客到达间隔
        y = unifrnd(3, 6, 1, n);    % n个顾客的服务时间
        c = cumsum(x);              % n个顾客的到达时间
        b = zeros(1, n);            % n个顾客开始服务的时间
        e = zeros(1, n);            % n个顾客结束服务的时间
        ws = zeros(1, n);           % n个顾客的逗留时间
        wq = zeros(1, n);           % n个顾客的排队等待时间
        ls = zeros(1, n);           % 各时刻的队长
        % 通过循环计算每个时刻(或每位顾客)的相关指标
        for k = 1:numel(x)
            % 第一个顾客的开始服务的时间就等于第一个顾客到达时间
            if k == 1
                b(k) = c(k);
            else % 从第二个顾客开始,如果第k个顾客的到达时间超过第k-1个顾客
                % 开始服务的时间,那么第k个顾客开始服务的时间为第k-1个顾客
                % 结束服务的时间
                b(k) = max(c(k),e(k-1));
            end
            e(k) = b(k) + y(k);     % 计算第k个顾客结束服务的时间
            ws(k) = e(k) - c(k);    % 计算第k个顾客的逗留时间
            wq(k) = b(k) - c(k);    % 计算第k个顾客排队等待的时间
            ls(k) = k - 1 - sum(e(1:k) <= c(k));    % 计算各时刻队长
        end
        lq = max([ls-1;zeros(1,n)]);    % 计算各时刻的队长
        % 计算第i个顾客总数的第j次模拟的平均队长
        Ls(i,j) = mean(ls(11:end));
        Lq(i,j) = mean(lq(11:end));
        Ws(i,j) = mean(ws(11:end));
        Wq(i,j) = mean(wq(11:end));
    end
end
% 模拟结果的可视化
figure
subplot(2,1,1)
plot(numCust, mean(Ls,2))
xlabel('到达的顾客总数');
ylabel('平均队长');
grid on;
subplot(2,1,2)
plot(numCust, mean(Ws,2))
xlabel('到达的顾客总数');
ylabel('平均逗留时间Ws');
grid on;