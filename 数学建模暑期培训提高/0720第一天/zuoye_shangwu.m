clear,clc,close all;
dirname = 'ImageChips';
anImage = imread(fullfile(dirname, '000.bmp'));
[row, col] = size(anImage);
% dir函数: 以结构体数组的形式列出当前文件夹中的文件和文件夹
files = dir(fullfile(dirname, '*.bmp'));
page = length(files);
imageMat = zeros(row, col, page);
resultPic = [];

% files: 所有图片的组成的结构体数组,对该数组进行遍历
for i = 1:page
    filename = fullfile(dirname, files(i).name);
    % imread函数将图片以像素矩阵的形式读取出来
    imageMat(:,:,i) = imread(filename);
end

% 因为最左边的一个碎纸条,在左侧边缘几乎都是白色的,所以
% 可以利用标准差或者方差这一特性,来先找到第一个碎纸条
firstPicIndex = find( var(imageMat(:,1,:)) == min(var(imageMat(:,1,:))) );

% right2left是一个协方差系数的的矩阵
% 第i行第j列表示第i张图片  右边  与第j张图片  左边  的协方差
right2left = zeros(page, page);
% 对每张图片两两求相关系数
for i = 1:length(files)
    for j = 1:length(files)
        ccMat = corrcoef( imageMat(:,end,i), imageMat(:,1,j) );
        right2left(i,j) = ccMat(2,1);
    end
end

for i = 1:page
    if i == 1
        current = firstPicIndex;
    else
        current = next;
    end
    % 找到与当前矩阵的右侧最匹配的左侧所对应的矩阵
    next = find( max(right2left(current,:)) == right2left(current,:) );
    resultPic = [resultPic, imageMat(:,:,current)];
end
figure
% 连接一个[]可以提高像素
imshow(resultPic,[])