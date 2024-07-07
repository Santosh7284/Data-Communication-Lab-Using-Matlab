% Draw message signal ,carrier signal and Phase modulaion

clc;
close all;
clear all;
t=0:0.001:1;
vm=input('enter message amplitude ');
vc=input('enter carrier amplitude ');
fm=input('enter message frequency ');
fc=input('enter carrier frequency ' );
m=input('enter sensitivity factor ');
msg=vm*sin(2*pi*fm*t);
subplot(311);
plot(t,msg,'black');
xlabel('Time');
ylabel('Amplitude');
title('Message signal/Santosh/063');
legend('message m(t)');
grid on;

carrier=vc*sin(2*pi*fc*t);
subplot(312);
plot(t,carrier,'black');
xlabel('Time');
ylabel('Amplitude');
title('carrier signal/Santosh/063');
legend('carrier c(t)');
grid on;

y=vc*cos((2*pi*fc*t)+m*msg);
subplot(313);
plot(t,y,'black');
xlabel('Time');
ylabel('Amplitude')
title('phase mod/Santosh/063');
legend('PM signal');
grid on;

