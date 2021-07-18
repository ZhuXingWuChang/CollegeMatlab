clear,clc
%{
Matlab编程题(三)
思路:
    一次性模拟生成n个顾客的相继到达时间
    一次性模拟生成n个顾客的接受服务时间
    然后利用蒙特卡罗法,
    对大量的顾客进行多次模拟,最后模拟出来的值应该接近于理论值
%}
lambda = 5;
mu = 6;
T = 5000;
count = 50;
% 100次模拟的数据,分别存放在Ls队长,Ws停留时间,Tb忙期这三个向量中
% Tt向量存放每一次模拟的用时,超过T结束模拟
[Ls, Ws, Tb, Tt] = deal(zeros(1,count));
for i = 1:count
    % 顾客人数的期望值
    EXnumCust = T/(1/lambda);
    % 分配长度为期望值5倍的列向量以保证预分配的空间充足
    % 对参数的名称进行说明:
    % ai(arrival interval): 到达间隔
    % at(arrival time): 到达时间
    % st(servicing time): 服务时间
    % stt(service start time): 服务开始时间
    % set(service end time): 服务结束时间
    % dt(duration of time): 停留时间
    % ls(line length): 每到来一个新顾客的时候的队伍长度
    % by(busy vector): 每一段忙期都储存在该数组中
    [ai,at,st,stt,set,dt,ls,by] = deal(zeros(1,3*EXnumCust));
    % busy: 一个布尔变量,这个变量用于标志忙期是否结束
    busy = false;
    
    % 从0开始,直到时间超过T时,结束模拟,并记录下模拟得到的各项数据
    j = 0;
    % k用来存储忙期的个数
    k = 1;
    while Tt(i) < T
        j = j + 1;
        % 对下一个顾客到达的时间进行模拟
        ai(j) = exprnd(lambda);
        at(j) = sum(ai);
        Tt(i) = Tt(i) + ai(j);
        % 对顾客的服务时间进行模拟
        st(j) = exprnd(mu);
        if j == 1
            stt(1) = at(1);
        else
            stt(j) = max( at(j), set(j-1) );
        end
        set(j) = at(j) + st(j);
        dt(j) = set(j) - stt(j);
        % j是第j个人来为止过的所有的人
        % sum(...)表示在第j个人来之前就已经走掉的人
        ls(j) = j - sum( stt(1:j) <= at(j) );
        
        % 对忙期的处理逻辑
        if j == 1
            by(1) = st(1);
        else % 即j >= 2的情况
            if at(j) >= set(j-1)
                busy = false;
            else
                busy = true;
            end
            % 如果不是忙期了,那么当前忙期就结束了,进入下一个忙期
            if ~busy
                k = k + 1;
            end
            by(k) = by(k) + st(j);
        end
    end
    
    % 对模拟得到的各项数据进行处理得到结论
    Ls(i) = mean(ls(1:j));
    Ws(i) = mean(dt(1:j));
    Tb(i) = mean(by(1:k));
end

fprintf('------模拟值------\n');
fprintf('队长: %.4f\n', mean(Ls));
fprintf('停留时间: %.4f\n', mean(Ws));
fprintf('忙期: %.4f\n', mean(Tb));
fprintf('------理论值------\n');
fprintf('队长: %.4f\n', lambda/(mu-lambda));
fprintf('停留时间: %.4f\n', 1/(mu-lambda));