function [PTP, PTP_1] = productPTP(planMatrix)  
transposedPlanMatrix = planMatrix';
PTP = transposedPlanMatrix*planMatrix;
PTP_1 = inv(PTP);
end