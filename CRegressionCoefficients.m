classdef CRegressionCoefficients
    
    properties
        a0;
        a1;
        a2;
        residualDispersion;
        
        weight;
        maxWeight;
        normalWeight;
    end
    
    methods
        function obj = CRegressionCoefficients(useDataMatrixTransposed, planMatrix, transposedPlanMatrix)
            [PTP, PTP_1] = productPTP(planMatrix);  
            
            sizeMatrix = size(useDataMatrixTransposed);
            for i=1:sizeMatrix(1,2)-1
                [PTR] = ProductPTR(useDataMatrixTransposed(2:sizeMatrix(1,1),i+1:sizeMatrix(1,2)), transposedPlanMatrix); 
                
                [a0, a1, a2] = regressionCoefficients(PTR,PTP_1);
                
                [Rp] = predictedResistanceValues(a0, a1, a2,planMatrix);
                [difSquare] = differenceSquare(Rp, useDataMatrixTransposed(2:sizeMatrix(1,1),i+1:sizeMatrix(1,2)));
                residualDispersion=sum(difSquare)/4;
                
                [weight] = weightSearch(residualDispersion);
                
            obj.a0(1,i) = a0;
            obj.a1(1,i) = a1;
            obj.a2(1,i) = a2;
            obj.residualDispersion(1,i) = residualDispersion;
            obj.weight(1,i) = weight;
            
            if i == 1
                obj.maxWeight = weight;
            end
            
            if obj.weight(1,i)<weight
                obj.maxWeight = weight;
            end
            end
            
            for i=1:sizeMatrix(1,2)-1
                [normalWeight] = normalWeightSearch(obj.weight(1,i), obj.maxWeight);
                obj.normalWeight(1,i) = normalWeight;
            end
        end
    end
end

