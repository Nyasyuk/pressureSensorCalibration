function [Rp] = predictedResistanceValues(a0, a1, a2, planMatrix)
sizePlanMatrix = size(planMatrix);
for i=1:sizePlanMatrix(1,1)
    Rp(i,1) = a0*planMatrix(i,1) + a1*planMatrix(i,2) + a2*planMatrix(i,3);
end
end
