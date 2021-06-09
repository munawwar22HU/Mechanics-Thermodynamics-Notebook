x = -1:0.01:1;
y_1 = x;
y_2 = x.^2;
y_3 = x.^3;

figure;
plot(x,y_1); hold on
plot(x,y_2);
plot(x,y_3); hold off
legend('y = x','y = x^2','y = x^3');
xlabel('x');
ylabel('y');
title('y vs x')