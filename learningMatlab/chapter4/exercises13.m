function out = exercises13(in)
%EXERCISES13 ����-������ת

[r,c] = size(in);
if r == 1 && c~=1
    out = in(end:-1:1);
elseif r~= 1 && c==1
    out = in(end:-1:1);
else
    out = in;
end

end

