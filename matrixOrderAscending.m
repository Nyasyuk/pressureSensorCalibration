function [dataMatrix1,dataMatrix2] = matrixOrderAscending(dataMatrix1,dataMatrix2)
sizeDataMatrix1 = size(dataMatrix1);
for i=1:sizeDataMatrix1(1,1)
    for j=1:sizeDataMatrix1(1,2)/2
        element = dataMatrix1(i,j);
        dataMatrix1(i,j) = dataMatrix1(i,sizeDataMatrix1(1,2)-j+1);
        dataMatrix1(i,sizeDataMatrix1(1,2)-j+1) = element;
       
        element = dataMatrix2(i,j);
        dataMatrix2(i,j) = dataMatrix2(i,sizeDataMatrix1(1,2)-j+1);
        dataMatrix2(i,sizeDataMatrix1(1,2)-j+1) = element;
    end
end
end
