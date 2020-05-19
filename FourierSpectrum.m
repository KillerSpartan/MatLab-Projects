T = 0.02;
f0=1/T;
w0=2*pi/T;
N=11;

n=-N:2:N;
fn=n*f0;
M=abs(1./(n*pi));
pha=zeros(1,N+1);


for i=1 : N+1
    if n(i)<0
        pha(i)=90;
    else
        pha(i)=-90;
    end
end

figure
subplot(211);
stem(fn, M)
grid
xlabel('Frequency [Hz]');
ylabel('Magnitude |C_n|');

subplot(212);
stem(fn, pha)
grid
xlabel('Frequency [Hz]');
ylabel('Phase');
grid; 