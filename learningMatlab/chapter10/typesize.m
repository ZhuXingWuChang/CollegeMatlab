function [arrtype, varargout] = typesize(inputval)
[r,c] = size(inputval);
if r == 1 && c == 1
    arrtype = 's';
elseif r == 1 || c == 1
    arrtype = 'v';
    varargout{1} = length(inputval);
else
    arrtype = 'm';
    varargout{1} = r;
    varargout{2} = c;
end
end