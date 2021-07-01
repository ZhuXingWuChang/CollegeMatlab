clear,clc
onepart = struct('part_no', 123, 'quantity', 4, 'costper', 33.95);
fprintf('part_no = %d\n', onepart.part_no)
fprintf('quantity = %d\n', onepart.quantity)
fprintf('costper = $%.2f\n', onepart.costper)