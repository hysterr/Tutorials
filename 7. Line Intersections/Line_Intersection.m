clear;
clc;
close all;

%% Line 1
x11 = 2;
y11 = 5;
x12 = 9;
y12 = 12;   

m1 = (y12 - y11) / (x12 - x11);
c1 = y11 - m1 * x11;

L1x = x11:0.1:x12;
L1y = m1.*L1x + c1;

%% Line 2
x21 = -3;
y21 = 11;
x22 = 2;
y22 = 10;

m2 = (y22 - y21) / (x22 - x21);
c2 = y21 - m2 * x21;

L2x = x21:0.1:x22;
L2y = m2.*L2x + c2;

%% Calculate Intersect
a1 = (c1*y11 - c1*y12) / (x11*y12 - x12*y11);
b1 = (a1*x12 + c1) / y12;

a2 = (c2*y21 - c2*y22) / (x21*y22 - x22*y21);
b2 = (a2*x22 + c2) / y22;

x_int = (b1*c2 - b2*c1) / (a1*b2 - a2*b1);
y_int = (a1*c2 - a2*c1) / (a1*b2 - a2*b1);

%% Plotting
figure(1)
cla 
hold on 

scatter(x11, y11, 'bo', 'markerfacecolor', 'k')
scatter(x12, y12, 'bo', 'markerfacecolor', 'k')
plot(L1x, L1y, 'k--')

scatter(x21, y21, 'bo', 'markerfacecolor', 'red')
scatter(x22, y22, 'bo', 'markerfacecolor', 'red')
plot(L2x, L2y, 'r--')

scatter(x_int, y_int, 20, '^', 'markeredgecolor', 'black', 'linewidth', 2, 'markerfacecolor', 'black')


