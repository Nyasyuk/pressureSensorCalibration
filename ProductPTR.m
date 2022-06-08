function [PTR] = ProductPTR(useDataMatrixTransposedColumn, transposedPlanMatrix)   
PTR = transposedPlanMatrix*cell2mat(useDataMatrixTransposedColumn);
end