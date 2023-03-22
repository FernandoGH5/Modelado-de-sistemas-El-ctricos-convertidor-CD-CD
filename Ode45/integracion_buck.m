clear all; close all; clc;

[t,x]=ode45(@buck, [0 0.01], [0 0]);

figure(1)

plot(t,x(:,1),"k"); hold on;
grid on
title("Voltaje de  Capacitor");
xlabel("tiempo");
ylabel("V");

figure(2)

plot(t,x(:,2));
grid on
title("Corriente de inductor");
xlabel("tiempo");
ylabel("I");

figure(3)

plot(t,x(:,2)); hold on;
plot(t,x(:,1),"k");
grid on
title("Voltaje de  Capacitor || Corriente de inductor");
xlabel("tiempo");
ylabel("V || I");


