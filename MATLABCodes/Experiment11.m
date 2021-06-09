a1 = 0.1305;
b1 = -0.01131;
a2 = 0.2389;
b2 = -0.01034;
a3 = 0.3467 ;
b3 = -0.009918;
a4 =  0.4565;
b4 = -0.00986;

b  = -[b1 b2 b3 b4];
m  = [23.3 43.0 62.6 82.2];
pm1 = a1*exp(b1.*t1);
pm2 = a2*exp(b2.*t2);
pm3 = a3*exp(b3.*t3);
pm4 = a4*exp(b4.*t4);

r1 = p1 - pm1;
r2 = p2 - pm2;
r3 = p3 - pm3;
r4 = p4 - pm4;

figure;
subplot 321;
plot(t1,h1,'-.','LineWidth',2); hold on
plot(t2,h2,'--','LineWidth',2);
plot(t3,h3,'-+','LineWidth',2);
plot(t4,h4,'-*','LineWidth',2);hold off
legend( 'm = 23.3g','m = 43.0g','m = 62.6', 'm = 82.0g')
xlabel('Time(s)')
ylabel('Height (cm)')

subplot 322;
plot(t1,p1,'-.','LineWidth',2); hold on
plot(t2,p2,'--','LineWidth',2);
plot(t3,p3,'-+','LineWidth',2);
plot(t4,p4,'-*','LineWidth',2);hold off
legend( 'm = 23.3g','m = 43.0g','m = 62.6', 'm = 82.0g')
xlabel('Time(s)')
ylabel('Potential Energy(J)')

subplot 323;
bar(t1,r1);xlabel('Time(s)'); ylabel('P.E (J)'); title('Residual P.E vs T , m = 23.3 g');


subplot 324;
bar(t2,r2);xlabel('Time(s)'); ylabel('P.E (J)'); title('Residual P.E vs T , m = 43.0 g');


subplot 325;
bar(t3,r3);xlabel('Time(s)'); ylabel('P.E (J)'); title('Residual P.E vs T , m = 62.6 g');


subplot 326;
bar(t4,r4);xlabel('Time(s)'); ylabel('P.E (J)'); title('Residual P.E vs T , m = 82.2 g');

figure;
plot(m,b);
xlabel('Mass (grams)')
ylabel('Coffecient of Frictional Loss')
title('Coffecient of Frictional Loss vs Mass')