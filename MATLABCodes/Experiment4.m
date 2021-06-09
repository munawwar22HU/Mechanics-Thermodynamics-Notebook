% Value of H and uncertanity in H
h_cm = 93.5;
h_m = 0.935;
U_h = (0.0005)/(6^0.5);

% Value of L and uncertainty in L
L_cm = 25;
L_m = 0.25;
U_L = (0.0005)/(6^0.5);

% Type B Uncertainity in Angle 
U_b_Angle = (0.1)/(6^0.5);

% Type B uncertainity in d
U_B_d = (0.0005)/(6^0.5);

d_A1_m = d_A1/100;
d_A2_m = d_A2/100;
d_A3_m = d_A3/100;
d_A4_m = d_A4/100;
avg_d_m = [mean(d_A1_m) mean(d_A2_m) mean(d_A3_m) mean(d_A4_m)];

% Type A uncertainty in d
U_A_d_A1 = std(d_A1_m,1)/sqrt(5-1);
U_A_d_A2 = std(d_A2_m,1)/sqrt(5-1);
U_A_d_A3 = std(d_A3_m,1)/sqrt(5-1);
U_A_d_A4 = std(d_A4_m,1)/sqrt(5-1);


% Theorotical Model
% d = 2*(hL(1-cos(theta)))^0.5


% Angle(theta) = 30

%1. Expected Value
exp_d_A1 = 2*(h_m*L_m*(1-cosd(30))).^0.5;
%2. Residual Plot
d_A1_r = d_A1_m - exp_d_A1 ;
figure;
bar(d_A1_r,0.4,"m")
title("Residual graph of d as a function of theta when theta = 30 degrees ")
ylabel("d(m)")
xlabel("s.NO")



% Angle(theta) = 40
%1. Expected Value 
exp_d_A2 = 2*(h_m*L_m*(1-cosd(40))).^0.5;
%2. Residual Plot
d_A2_r = d_A2_m - exp_d_A2 ; 
figure;
bar(d_A2_r,0.4,"y")
title("Residual graph of d as a function of theta when theta = 40 degrees ")
ylabel("d(m)")
xlabel("s.NO")

% Angle(theta) = 50
%1. Expected Value
exp_d_A3 = 2*(h_m*L_m*(1-cosd(50))).^0.5;
%2. Residual Plot
d_A3_r = d_A3_m - exp_d_A3 ; 
figure;
bar(d_A3_r,0.4,"g")
title("Residual graph of d as a function of theta when theta = 50 degrees ")
ylabel("d(m)")
xlabel("s.NO")

% Angle(theta) = 60
%1. Expected Value
exp_d_A4 = 2*((h_m*L_m*(1-cosd(60)))^0.5);
%2. Residual Plot
d_A4_r = d_A4_m - exp_d_A4 ;
figure;
bar(d_A4_r,0.4,"b")
title("Residual graph of d as a function of theta when theta = 60 degrees ")
ylabel("d(m)")
xlabel("s.NO")


%Transfer the uncertainity in angle to d
U_d_1 = (( ((h_m*L_m)^0.5*(sind(30))*U_b_Angle)/(1-cosd(30))^0.5  )^2+(U_B_d)^2+(U_A_d_A1)^2)^0.5;
U_d_2 = (( ((h_m*L_m)^0.5*(sind(40))*U_b_Angle)/(1-cosd(40))^0.5  )^2+(U_B_d)^2+(U_A_d_A2)^2)^0.5;
U_d_3 = (( ((h_m*L_m)^0.5*(sind(50))*U_b_Angle)/(1-cosd(50))^0.5  )^2+(U_B_d)^2+(U_A_d_A3)^2)^0.5;
U_d_4 = (( ((h_m*L_m)^0.5*(sind(60))*U_b_Angle)/(1-cosd(60))^0.5  )^2+(U_B_d)^2+(U_A_d_A4)^2)^0.5;
U_d = [U_d_1 U_d_2 U_d_3 U_d_4];
Expected = [exp_d_A1 exp_d_A2 exp_d_A3 exp_d_A4];
figure;
errorbar(Angle,avg_d_m,U_d,'--r*');
hold on
plot(Angle,Expected,'--bs');
legend('Expected Values of d','Mathematical Model');
title('Graph of average d vs Angle');
xlabel('theta(degrees)')
ylabel('d(m)')

figure;
plot(Angle,Expected,'--g*');
hold on
plot(Angle,avg_d_m,'--rs')
legend('Expected Values of d','Measured values of d');
title('Graph of average d vs Angle');
xlabel('theta(degrees)')
ylabel('d(m)')








