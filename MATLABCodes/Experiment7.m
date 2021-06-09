% Type B uncertainity in Height 
Length_B = (0.001/2)/(6^0.5);
% Type B uncertainity in Time
Time_B = (0.001/2)/(3^0.5);

theoretical_value = ((2*0.450*0.03^2)/(0.450*0.03^2+1.03*10^-3)).*Height;
measured_value = ((2*0.450*0.03^2)/(0.450*0.03^2+ 0.97178*10^-3)).*Height;
residual = flipud(theoretical_value - measured_value);

figure
bar(residual)
title("The residual of data as a function of Delta h")
xlabel("s.No")
ylabel("v^2 (m^2/s^2)")

