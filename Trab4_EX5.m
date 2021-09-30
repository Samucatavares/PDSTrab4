clc; clear all; close all;

Bola_M = audioread('BOLA_M.WAV');
Bola_F = audioread('BOLA_F.WAV');
sinal_M = zeros(1000,1);
sinal_F = zeros(1000,1);

for i=1:length(sinal_M);
desloca_M(i)=sinal_M;
desloca_F(i)=sinal_F;
end

for i =1:128
amostra_F(i)=desloca_F(i);
amostra_M(i)=desloca_M(i);
end

FFFT1_1=fft(F1_1,128);
MFFT1_1=fft(M1_1,128);

FI1_1=ifft(FFFT1_1,128);
MI1_1=ifft(MFFT1_1,128);

figure(1)
subplot(2,1,1);
plot(F, abs(FFFT1_1));
xlim([0 128]);
title('FFT BOLA_F frame 1');

subplot(2,1,2);
plot(F,abs(MFFT1_1));
xlim([0 128]);
title('FFT BOLA_M frame 1');

figure(2)
subplot(4,1,1);
plot(F,F1_1);
xlim([0 128]);
title('FFT original BOLA_F frame 1');

subplot(4,1,2);
plot(F,FI1_1);
xlim([0 128]);
title('IFFT original BOLA_M frame 1');

subplot(4,1,3);
plot(F,M1_1);
xlim([0 128]);
title('IFFT original BOLA_M frame 1');

subplot(4,1,4);
plot(F,MI1_1);
xlim([0 128]);
title('IFFT BOLA_M frame 1');