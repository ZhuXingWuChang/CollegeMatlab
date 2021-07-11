clear,clc
cellrowvec = {'xyz', 33.3, 2:6, 'a'<'c'};
cellcolvec = transpose(cellrowvec);
cellmat = reshape(cellcolvec,2,2);
celldisp(cellmat)