figure;
plot(TimeOff1,MassOff1,'b');
xlabel('Time(s)');
ylabel('Change in mass (g)');
title('Time Off 1');
% y = mx + c
% m = -0.04349
% c = 90.88

figure;
plot(TimeOn1,MassOn1,'g');
xlabel('Time(s)');
ylabel('Change in mass (g)');
title('Time On 1');
% y = mx + c
% m = -0.1744
% c = 97.67


figure;
plot(TimeOff2,MassOff2,'r');
xlabel('Time(s)');
ylabel('Change in mass (g)');
title('Time Off 2');
% y = mx + c
% m = -0.03418
% c = 86.12


figure;
plot(TimeOn2,MassOn2,'y');
xlabel('Time(s)');
ylabel('Change in mass (g)');
title('Time On 2');
% y = mx + c
% m = -0.1562
% c = 99.99



figure;
plot(TimeOff1,MassOff1,'b'); hold on
plot(TimeOn1,MassOn1,'g');
plot(TimeOff2,MassOff2,'r');
plot(TimeOn2,MassOn2,'y'); hold off
legend("Time Off 1", "Time On 1", "Time Off 2"," Time On 2");
xlabel('Time(s)');
ylabel('Change in mass (g)');
title('Change in mass (g) vs Time(s)');