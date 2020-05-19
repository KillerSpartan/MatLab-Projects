t=0:0.001:1; 

num=4.8;
den=[1 6.67];

sys=tf(num,den) 
step(sys)

