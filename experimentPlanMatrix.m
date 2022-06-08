function [planMatrix, transposedPlanMatrix] = experimentPlanMatrix(P)   
sizeMatrixP = size(P);
for i=1:sizeMatrixP(1,2)
    transposedPlanMatrix(1,i) = cell2mat(P(1,i))^0;
    transposedPlanMatrix(2,i) = cell2mat(P(1,i))^1;
    transposedPlanMatrix(3,i) = cell2mat(P(1,i))^2;
end
planMatrix = transposedPlanMatrix';
end