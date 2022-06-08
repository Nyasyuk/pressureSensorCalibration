[matrix3,matrix4] = matrixOrderAscending(matrix3,matrix4);

[useDataMatrixTransposed1] = dataProcessing(matrix1,matrix2);

[planMatrix, transposedPlanMatrix] = experimentPlanMatrix(matrix1(1:1, 2:9));
regressionCoefficients1 = CRegressionCoefficients(useDataMatrixTransposed1, planMatrix, transposedPlanMatrix);

[useDataMatrixTransposed2] = dataProcessing(matrix3,matrix4);
regressionCoefficients2 = CRegressionCoefficients(useDataMatrixTransposed2, planMatrix, transposedPlanMatrix);

[matrix] = takeMatrixForChart(matrix1, matrix2, matrix3, matrix4);

sizeDataMatrix = size(matrix);
matrixForChart = cell2mat(matrix(2:sizeDataMatrix(1,1),2:sizeDataMatrix(1,2)));
temperature = cell2mat(matrix(1:1,2:sizeDataMatrix(1,2)));
pressure = cell2mat(matrix(2:sizeDataMatrix(1,1),1:1));

f1 = figure('Name','Sensor calibration','NumberTitle','off');
subplot(1,2,1);
plot(temperature,matrixForChart2)
grid on
title('Зависимость сопротивления от температуры при различных давлениих')
ylabel('Сопротивление (R)')
xlabel('Температура (T)')
h = legend('0,2', '0,4', '0,6', '0,8', '1', '1,2', '1,4', '1,6');
set(h,'Interpreter','none');

subplot(1,2,2);
plot(pressure,matrixForChart3)
grid on
title('Зависимость сопротивления от приложенного давления при различных температурах')
ylabel('Сопротивление (R)')
xlabel('Давление (P)')
h = legend('-60', '-50', '-40', '-30', '-20', '-10', '0', '10', '20', '30', '40', '50', '60', '70', '80', '90', '100', '110', '120');
set(h,'Interpreter','none');

c = uicontrol;
c.String = 'Save';

disp(matrix);







