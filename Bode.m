clear, close all, clc
w=0.1:0.01:100;
M=-10*log10(64+20*(w.*2)+w.*4); 
ph=-atand(6*w/(w.*2+8))

figure
subplot(2,1,1);
semilogx(w,M);
grid
subplot(2,1,2);
semilogx(w,ph);
grid
figure
G=tf(1,[1 6 8]) 
bode(G); 
grid