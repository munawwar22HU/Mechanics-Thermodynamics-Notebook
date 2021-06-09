m_v1 = 0.07449*exp(-0.01244.*T1).*cos(7.873.*T1 -0.08103);
r1 = V1 - m_v1;
% Residual Plot
figure 
plot(T1,r1);
title("Residual Plot for L1")


m_v2 = -0.07236*exp(-0.01184.*T2).*cos(7.882.*T2-0.42);
figure
r2 = V2 - m_v2;

plot(T2,r2);
title("Residual Plot for L2")

m_v3 = 0.07135*exp(-0.01141.*T3).*cos(7.965.*T3-1.922);
figure
r3 = V3 - m_v3;
plot(T3,r3);
title("Residual Plot for L3")

m_v4 = -0.06439*exp(-0.009528.*T4).*cos(8.031*T4-0.1526);
figure
r4 = V4 - m_v4;
plot(T4,r4);
title("Residual Plot for L4")

m_v5 = 0.0673*exp(-0.01495.*T5).*cos(8.142.*T5 - 0.07685);
figure 
r5 = V5 - m_v5;
plot(T5,r5)
title("Residual Plot for L5")

L = [0.175 0.170 0.165 0.160 0.155];

gamma = [0.01244 0.01184 0.01141 0.009528 0.01495];

figure 
plot(L,gamma)
title('Length vs Gamma')
xlabel ('Length (m)')
ylabel ('Damping Constant')

