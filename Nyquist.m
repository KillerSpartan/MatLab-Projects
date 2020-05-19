syms s; 
t=0:0.001:1; 

%Numerador 
a=500
b=s-2
num = expand(a*b);

%Denominador
c=s+1;
d=(s/2)+1;
e=(s/3)+1;
den = expand(c*d*e)

G=tf([0 25], [1/6 1 11/6 1])

nyquist(G);