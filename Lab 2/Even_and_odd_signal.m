%% plot the signal x[n] = 0, for n <0 
% = 2 otherwise
%Also find its even and odd part of signal and plot them 


 clc;
 close all;
 clear all;
 N = 10;
 i = 1;
 for n = -N:N;
     if n<0;
         x(i) = 0;
     else
         x(i) = 2;
     end;
     i = i+1;
 end;
 n = -N:N;
 y = fliplr(x);
 subplot(411);
 stem(n, x);
 xlabel('time');
 ylabel('amp');
 title('plot1/Santosh/063');
 grid on;


 subplot(412);
 stem(n, y);
 xlabel('time');
 ylabel('amp');
 title('plot2/Santosh/063');
 grid on;

 xeven = (x+y)/2;
 xodd = (x-y)/2;
 subplot(413);
 stem(n, xeven);
 xlabel('time');
 ylabel('amp');
 title('evensignal/Santosh/063');
 grid on;


 subplot(414);
 stem(n, xodd);
 xlabel('time');
 ylabel('amp');
 title('oddsignal/Santosh/063');
 grid on;


