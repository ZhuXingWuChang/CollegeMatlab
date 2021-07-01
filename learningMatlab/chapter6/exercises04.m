function [DMS] = exercises04(DD)
D = fix(DD);
M = fix((DD - D)*60);
S = fix(((DD - D)*60 - M)*60);
DMS = sprintf(' -> %d°%d''%d'''' <- ',D,M,S);
end