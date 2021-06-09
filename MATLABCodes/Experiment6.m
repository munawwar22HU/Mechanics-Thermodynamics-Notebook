f = 10 * (pi/180);
wf = f./Light_t_s_;
st2 = Stop_t_s.^2;
% wf = 0.888 t %
% a = 0.888 rad/s^2 
% theta  = 0.4298 t^2

figure;
residual_angle = Angle_rad_ - 0.888.*st2;
bar(residual_angle)
title("Residual for Angle(theta)")
ylabel("theta (degrees)")

figure;
residual_omega = Angle_rad_ - 0.4298.*st2;
bar(residual_angle)
title("Residual for Omega(theta)")
ylabel("omega (rad/s^2)")

