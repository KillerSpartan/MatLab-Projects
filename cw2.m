t=0:0.1:20; 
G=tf([0.51],[1 0.51 0.51])

%u=ones(1, length(t)); 


u=t; %Ramp 
%u=0.5*t.*t; %'Par?bola

y=lsim(G,u,t);

plot(t,y)
hold on
plot(t,u,'--k')
grid 

