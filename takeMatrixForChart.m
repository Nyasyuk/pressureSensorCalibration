function [matrix] = takeMatrixForChart(matrix1, matrix2, matrix3, matrix4)
matrix1 = matrix1';
matrix2 = matrix2';
matrix3 = matrix3';
matrix4 = matrix4';

sizeDataMatrix = size(matrix1);

    matrix(:,1) = [{'R'}; 0.2; 0.4; 0.6; 0.8; 1; 1.2; 1.4; 1.6];
    
    varJ = 0;
for i=2:sizeDataMatrix(1,1)
    for j=2:sizeDataMatrix(1,2)
        if (j >= 3 && j <= 8)||j == 13
            varJ = varJ + 1;
        end
        
        var = cell2mat(matrix1(i,j)) + cell2mat(matrix2(i,j)) - cell2mat(matrix3(i,j)) - cell2mat(matrix4(i,j));
        matrix(i,j+varJ) = {var};
        if (j >= 3 && j <= 8)||j == 13
            matrix(i,j + varJ - 1) = {(cell2mat(matrix(i,j+varJ - 2)) + cell2mat(matrix(i,j+varJ)))/2};
        end
    end
        varJ = 0;
end
    matrix(1,:) = [{'R'} {-60} {-50} {-40} {-30} {-20} {-10} {0} {10} {20} {30} {40} {50} {60} {70} {80} {90} {100} {110} {120}];

end