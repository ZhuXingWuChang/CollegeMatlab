clear,clc
parts(3) = struct('partno', 123, 'quantity', 4, 'costper', 33);
parts(2) = struct('partno', 142, 'quantity', 1, 'costper', 150);
parts(1) = struct('partno', 106, 'quantity', 20, 'costper', 7.5);

for i = 1:length(parts)
    fprintf('%d\t%.2f\n', parts(i).partno, ...
        parts(i).quantity * parts(i).costper)
end