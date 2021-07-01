clear,clc
format
mat = randi(9,3,5)
rowMaxValues = max(mat')'
colMaxValues = max(mat)
maxValue = max(rowMaxValues)