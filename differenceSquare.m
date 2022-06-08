function [difSquare] = differenceSquare(Rp, matrixColumn)
sizeMatrixColumn = size(matrixColumn);
for i = 1:sizeMatrixColumn(1,1)
    difSquare(i,1) = (cell2mat(matrixColumn(i,1)) - Rp(i,1))^2;
end
end
