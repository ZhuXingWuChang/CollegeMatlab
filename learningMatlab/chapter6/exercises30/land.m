clear,clc
% 提示用户输入以英亩为单位的土地面积
inacres = askacres;
% 以公顷和平方英里为单位计算并返回面积
[sqmil, hectares] = convacres(inacres);
% 打印结果
dispareas(inacres,sqmil,hectares)