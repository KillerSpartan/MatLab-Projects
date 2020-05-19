T = 0.02;
fs=1000;
ts=1/fs; 

%Vector de Tiempo
t=0.1:ts:0.2;
wO=2*pi/T;
N=11;

fdt=zeros(1, length(t)); 

for n= -N:2:N
    Co=1/2;
    Cn=-1j/(n*pi);
    fdt=fdt+Co+(Cn*exp(1i*n*wO*t));
end

figure
plot(t, real(fdt));
grid; 