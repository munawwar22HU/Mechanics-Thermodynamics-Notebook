Mass_kg = Mass_g./1000;
Weight_N = Mass_kg * 9.80665;

% K1 - single
K1_single_m = K1_single_cm./100;
Residual_1 = Weight_N - K1_single_m.*10.72;
figure;
bar(Residual_1,0.4,"cyan")
title("Residual Graph for Spring Single K1")

% y = 10.72 x

% K1 - parallel
K1_parallel_m = K1_parallel_cm./100;
Residual_2 = Weight_N - K1_parallel_m.*21;
figure;
bar(Residual_2,0.4,"m")
title("Residual Graph for Parallel K1 Springs")

% y = 21 x

% K1 - series
K1_series_m = K1_series_cm./100;
Residual_3 = Weight_N - K1_series_m.*5.375;
figure;
bar(Residual_3,0.4,"black")
title("Residual Graph for Series K1 Springs")
% y = 5.375 x

% K2 - Single
K2_single_m = K2_single_cm./100;
Residual_4 = Weight_N - K2_single_m.*27.25;
figure;
bar(Residual_4,0.4,"y")


% y = 27.25 x

% K1 + K2 - Series
K1_K2_series_m = K1_K2_series_cm./100;
Residual_5 = Weight_N - K1_K2_series_m.*7.593;
figure;
bar(Residual_5,0.4,"k")

% y = 7.593 x

% K1 + K2 - Parallel
K1_K2_parrallel_m = K1_K2_parallel_cm./100;
Residual_6 = Weight_N - K1_K2_parrallel_m.*38.02;
figure;
bar(Residual_6,0.4,"red")

% y = 38.02 x





