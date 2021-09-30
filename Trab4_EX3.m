clear; clc; close all;
% 4

f = 1000; 
Ts = 1/f;
t=0:1/f:1000;
n_ = 5000;
tt = -2:Ts:(n_amostras-1)*Ts;
largura = 0.5;
sinal_X = rectpuls(tt,largura);

figure(1);
subplot(2,1,1)
stem(tt,sinal_X); title('Pulso retangular');
xlabel('Tempo'); ylabel('Amplitude'); axis([-1 1 -0.05 1]);
  
%% Reconstroi eixo do tempo de ambos sinais
numero_amostras_sinal_A = length(sinal_X);
eixo_n = (0:numero_amostras_sinal_A-1);  
eixo_temp = eixo_n*(1/f) ;  %t=n*Ts onde Ts=1/Fs
     
espectro_sinal_X = fftshift(sinal_X);
eixo_freq = eixo_n*(f/numero_amostras_sinal_A);
espectro_mag = abs(espectro_sinal_X);
subplot(2,1,2); stem(eixo_freq, espectro_mag); title('Espectro Pulso'); 
xlabel('Frequência (Hz)'); ylabel('Amplitude');