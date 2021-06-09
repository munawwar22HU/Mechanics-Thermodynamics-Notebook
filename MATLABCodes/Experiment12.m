values = (1:4);
figure;
subplot 221
plot(values,m1,"--"); hold on
plot(values,e1,"-*");hold off
legend("Expected","Measured");
ylabel("Harmonics(Hz)");
xlabel("No. Antinodes");
title("Graph of Haromincs vs No. of Antinodes for Unloaded Steel String");


subplot 222
plot(values,m2,"--"); hold on
plot(values,e2,"-*");hold off
legend("Expected","Measured");
ylabel("Harmonics(Hz)");
xlabel("No. of Antinodes");
title("Graph of Haromincs vs No. of Antinodes for Loaded Steel String");

r1 = e1 - m1;
subplot 223
bar(values,r1);
ylabel("Harmonics(Hz)");
xlabel("No. of Antinodes");
title("Residual Plot for unloaded Steel String");

r2 = e2 - m2;

subplot 224
bar(values,r2);
ylabel("Harmonics(Hz)");
xlabel("No. of Antinodes");
title("Residual plot for Loaded Steel String");


