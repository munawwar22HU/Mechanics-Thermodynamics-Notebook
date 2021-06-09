b = 5.675E-8; % Boltzman constant
e = 0.7 ;% Emissivity

To = 25 + 273; % Room Temperature in Kelvin
m = 2.35/1000; % Mass in Kg
c = 460; % Specific Heat Capacity

r = 0.723/2000; % Radius
L = 100/100; % Length
S = 2*pi*r*L; % Surface Area


tc4 = e * b * S.*t;
tc1 = m * c;
tc0 = -(e*b*S*(To^4).*t+ V.*A.*t+m*c*To);
for i = 1:7
    p = [tc4(i) 0 0 tc1 tc0(i)];
    roots(p)
end
