N = 64;

twosm = 2 * ones(N, N);
v = 0:1:N;

rampm1 = ones(N,1) * v;
rampm2 = v' * v;

f = 3;
s = sin(2*pi*f*v);
sinm1 = s' * s;

f1 = 3;
f2 = 7;
s1 = sin(2*pi*f1*v);
s2 = sin(2*pi*f2*v);
sinm2 = s1' * s2;

figure;
imagesc(rampm2);
colorbar;
title('64x64 Outer Product Ramp');

cropped = im(128:287, 58:217);
small = cropped(1:4:end, 1:4:end);

imagesc(small);
colorbar;
title('40x40 Downsampled Image');
