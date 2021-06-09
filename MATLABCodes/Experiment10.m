m1 = m1(1:3);
m2 = m2(1:3);

%%
mass1 = m1(1);
mass2 = m2(1);
c = 887;

s1 = pi * m1(2)*m1(3);
s2 = pi * m2(2) * m2(3);
%%
x0_1 = 130.3;
b1 = -0.00175;

x0_2 = 85.69;
b2 = -0.002459;

%%
h1 = -(b1*mass1*c)/s1;
h2 = -(b2*mass2*c)/s2;
%% 
xm1 = x0_1*exp(b1.*t1);
xm2 = x0_2*exp(b2.*t2);
%%
res1 = x1 -xm1;
res2 = x2 -xm2;
%%
figure;
subplot 221
plot (t1,x1,'*');hold on
plot (t1,xm1);hold off
title('Without Fan')

subplot 222
bar (t1,res1);hold on
title('Residual of without Fan')


subplot 223
plot (t2,x2,'*');hold on
plot (t2,xm2);hold off
title('With Fan')

subplot 224
bar(t2,res2);
title('Residual of with Fan')

