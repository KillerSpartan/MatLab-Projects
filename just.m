clear, close all, clc
w=1:1:10000;
f=w/(2*pi);     %fto6harmonic 
f0=50;
w0=2*pi*f0;
A=length(w);
mag=zeros(1,A);
ang=mag;
k=0.9011;
k2=0.91;

%Conventional Harmonics Compensator
for i=1:A
    num=1;
    den=(w(i).*4)+(20*(w(i).*2))+64;
    mag(i)=20*log(abs(num/den));
    ang(i)=angle(num/den)*180/pi;
end


figure
subplot(2,1,1)
plot(f, mag,'LineWidth', 2)
set(gca, 'FontSize', 11.5)
xlabel('Frequency [Hz]')
ylabel('Magnitude [dB]')
grid
axis([0 900 -100 100])
title('Bode plot conventional scheme')

subplot(2,1,2)
plot(f, ang,'LineWidth', 2)
set(gca, 'FontSize', 11.5)
xlabel('Magnitude [dB]')
ylabel('Frequency [Deg]')
grid
axis([0 900 -100 100])
