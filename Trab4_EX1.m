clc; clear all; close all;

%% 1
t = 0:0.001:0.6; % tempo em milisegundos
x = sin(2*pi*50*t)+sin(2*pi*120*t); % sinal sem ru�do
r = 2*randn(size(t)); % ru�do de m�dia zero
y = x + r; % sinal ruidoso
plot(t(1:50),y(1:50))
title('Sinal Corrompido por Ru�do de M�dia Zero')
xlabel('tempo (milisegundos)')
Y = fft(y,512); % espectro de freq��ncia
Pyy = Y.* conj(Y) / 512; % pot�ncia do espectro
f = 1000*(0:256)/512;
figure
plot(f,Pyy(1:257))
title('Potencia do Espectro de y')
xlabel('frequencia (Hz)')