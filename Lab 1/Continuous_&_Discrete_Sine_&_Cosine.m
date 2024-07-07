
clc;
close all;
clear all;
a=5;
f=4;
t=0:0.01:1;
x=a*sin(2*pi*f*t);
y=a*cos(2*pi*f*t);
subplot(2,2,1);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('continuous sine1/santosh/063');
grid on;

subplot(2,2,2);
stem(t,x);
xlabel('Time');
ylabel('Amplitude');
title('dicrete sine2/santosh/063');
grid on;

subplot(2,2,3);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('continuous cosine1/santosh/063');
grid on;

subplot(2,2,4);
stem(t,x);
xlabel('Time');
ylabel('Amplitude');
title('dicrete cosine2/santosh/063');
grid on;

