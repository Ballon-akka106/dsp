clc;
clearall;
N=input('enter the order of filter');
wc=(pi/2);
a=(N-1)/2;
for n=1:N
if((n-1)==a)
hd(n)=(wc/pi);  
else
hd(n)=(sin(wc*(n-1-a)))/(pi*(n-1-a)) 
end; 
w(n)=1;
end; 
h=w.*hd;                
a=0:.01:pi;
b=freqz(h,1,a);
mag=20*log(abs(b));
plot(a/pi,mag);
grid;
xlabel('Nomalised frequency  \omega/\pi');
ylabel('Magnitude in dB');
title('LOW PASS FIR FILTER RESPONSE');
phase=ang(b);
plot(a/pi,phase);
figure(2);
xlabel('Nomalised frequency  \omega/\pi');
ylabel('PHASE’);
title('LOW PASS FIR FILTER RESPONSE');


OUTPUT:
Enter the order of filter  17
