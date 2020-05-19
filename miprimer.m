
t=0:0.001:1; 
f0=50;
s1=sin(2*pi*f0*t+10);

figure
plot(t,s1);

s2=exp(-2*t);
s3=s1.*s2;

figure 
plot(t, s3); 

clc

