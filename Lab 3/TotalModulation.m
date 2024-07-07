% Draw a message signal, carrier signal and amplitude modulation signal

clc;
close all;
clear all;
t=0:0.001:1;
am=input('enter message amplitude ');
fm=input('enter message frequency ');
ac=input('enter carrier amplitude ');
fc=input('enter carrier frequency ');
mt=am*sin(2*pi*fm*t);
ct=ac*sin(2*pi*fc*t);
x=mt.*ct
mod=x+(ac.*ct);
subplot(311);
plot(t,mt,'black');
xlabel('Time');
ylabel('Amplitude')
title('Message signal/Santosh/063');
legend('Message m(t)');
grid on;

subplot(312);
plot(t,ct,'black');
xlabel('Time');
ylabel('Amplitude')
title('Carrier signal/Santosh/063');
legend('Carrier c(t)');
grid on;

subplot(313);
plot(t,mod,'black');
xlabel('Time');
ylabel('Amplitude')
title('Amplitude 100% Modulation/Santosh/063');
legend('AM signal');
grid on;

