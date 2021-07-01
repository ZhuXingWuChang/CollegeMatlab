function [row, col, varargout] = mysize(mat)
[row, col] = size(mat);
if nargout == 3
    varargout{1} = row * col;
end
end