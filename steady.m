t=0:0.1:30; 
G=tf([0.51],[1 0.51 0.51])

%u=ones(1, length(t)); 


u=t; %Ramp 
%u=0.5*t.*t; %'Parabola

y=lsim(G,u,t);

plot(t,y)
hold on
plot(t,u,'--k')
grid 

