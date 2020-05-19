%Hola amigos de YT, en este video les voy a explicar c?mo programar la
%serie de Fourier en MatLab. Jajajajja xdxdxdxdxdxd.

T = 0.02;
fs=1000;
ts=1/fs; 

%Vector de Tiempo
t=0:ts:0.05;
wO=2*pi/T;
N=10;

fdt=zeros(1, length(t)); 

for n= 1:2:N
    bn=4/(n*pi);
    fdt=fdt+bn*sin(n*wO*t);
end

figure
plot(t, fdt);
grid; 