function [a0, a1, a2] = regressionCoefficients(PTR,PTP_1)
a = PTP_1*PTR;
a0 = a(1,1);
a1 = a(2,1);
a2 = a(3,1);
end
