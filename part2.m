Fs = 10000;
t1 = 0:1/Fs:4;
A = 0.5;
a = 1;

d = A*sin(2*pi*350*t1) + A*sin(2*pi*440*t1);
d_noise = unoise(length(d), a);
d_noisy = d + d_noise;

t2 = 0:1/Fs:0.5;
b1 = A*sin(2*pi*480*t2) + A * sin(2*pi*620*t2);
z1 = zeros(1, 5000);
b = [b1 z1 b1 z1 b1 z1 b1 z1];
b_noise = unoise(length(b), a);
b_noisy = b + b_noise;

t2 = 0:1/Fs:2;
r1 = A *sin(2*pi*440*t2) + A * sin(2*pi*480*t2);
z2 = zeros(1, 40000);
r = [r1 z2 r1 z2 r1 z2];
r_noise = unoise(length(r), a);
r_noisy = r + r_noise;