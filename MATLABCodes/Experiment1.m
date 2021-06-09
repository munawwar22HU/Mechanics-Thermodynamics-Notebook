% Calculate Type B uncertainity in Time
time_B = (0.01 / 2)/(3^0.5);
length_B = (0.001/2)/(6^0.5);
% Calculate Type A uncertainity
th1 = T_H1./10;
th2 = T_H2./10;
th3 = T_H3./10;
th4 = T_H4./10;

H1 = 0.377;
H2 = 0.312;
H3 = 0.253;
H4 = 0.507;

% avg1 

avg1 = mean(th1);
avg2 = mean(th2);
avg3 = mean(th3);
avg4 = mean(th4);
% d1
d1 = th1 - avg1;
d2 = th2 - avg2;
d3 = th3 - avg3;
d4 = th4 - avg4;

% sq d1
sqd1 = d1.^2;
sqd2 = d2.^2;
sqd3 = d3.^2;
sqd4 = d4.^2;

% std d1

std1 = sqrt(sum(sqd1)/5);
time_A_1 = std1 / (sqrt(5-1));
time_u_1 = sqrt(time_A_1^2+time_B^2);

std2 = sqrt(sum(sqd2)/5);
time_A_2 = std2 / (sqrt(5-1));
time_u_2 = sqrt(time_A_2^2+time_B^2);

std3 = sqrt(sum(sqd3)/5);
time_A_3 = std3 / (sqrt(5-1));
time_u_3 = sqrt(time_A_3^2+time_B^2);

std4 = sqrt(sum(sqd4)/5);
time_A_4 = std4/ (sqrt(5-1));
time_u_4 = sqrt(time_A_4^2+time_B^2);

g1 = (4 * pi^2) * H1/(avg1^2);
g2 = (4 * pi^2 )* H2/(avg2^2);
g3 = (4 * pi^2) * H3/(avg3^2);
g4 = (4 * pi^2) * H4/(avg4^2);

G = [g1 g2 g3 g4];

u_g1 = g1 * ((2*time_u_1/avg1)^2+(length_B/H1)^2)^0.5;
u_g2 = g2 * ((2*time_u_2/avg2)^2+(length_B/H2)^2)^0.5;
u_g3 = g3 * ((2*time_u_3/avg3)^2+(length_B/H3)^2)^0.5;
u_g4 = g4 * ((2*time_u_4/avg4)^2+(length_B/H4)^2)^0.5;

ug= [u_g1 u_g2 u_g3 u_g4];

% Square The uncertainities
ug_sq = ug.^2;
% Divide G by ug_sq
g_sq = G./ug_sq;
% Inverse of ug_sq
inv_ug_sq = 1./ug_sq;
% final value
final_g = sum(g_sq)/sum(inv_ug_sq);
% final uncertainity
final_g_u = (1 / sum(inv_ug_sq))^0.5;


