%construct  a continuous sinc signal

clc;
close  all;
clear all;
t = -10:0.0001:10;
y = sin(t)./t;
plot (t, y);
xlabel('time');
ylabel('amp');
title('sinc/Santosh/063');
grid on;
