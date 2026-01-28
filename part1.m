twos = 2 * ones(1, 50);
ramp1 = 5:1:55;
ramp2 = 23:-0.1:18;
oto4pi = 0:0.01:4*pi;
a = 3; v = 0.7; b = 0.3;
cos1 = a * cos(2 * pi * v * oto4pi + b);
ramprod = ramp1 .* ramp2;

figure;   

subplot(3,2,1);
plot(twos);
title('Twos');
grid on;

subplot(3,2,2);
plot(ramp1);
title('Ramp1');
grid on;

subplot(3,2,3);
plot(ramp2);
title('Ramp2');
grid on;

subplot(3,2,4);
plot(cos1);
title('Cosine Signal');
xlabel('t');
ylabel('f(t)');
grid on;

subplot(3,2,5);
plot(ramprod);
title('Ramp Product');
grid on;