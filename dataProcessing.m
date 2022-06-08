function [useDataMatrixTransposed] = dataProcessing(dataMatrix1,dataMatrix2)
useDataMatrix(1,:)=dataMatrix1(1,:);

j=2;
for i = 2:13
    if cell2mat(dataMatrix1(i,1)) <= cell2mat(dataMatrix2(i,1))
        useDataMatrix(j,:)=dataMatrix1(i,:);
        useDataMatrix(j+1,:)=dataMatrix2(i,:);
    else
        useDataMatrix(j,:)=dataMatrix2(i,:);
        useDataMatrix(j+1,:)=dataMatrix1(i,:);
    end
    j=j+2;
end
useDataMatrixTransposed = useDataMatrix';

useDataMatrixTransposed(1,1)={'T/P'};
end

