clc;
close all;
clear ;


a=1;
t=0:1/8192:1;
f=384*[1 16/15 9/8 6/5 5/4 4/3	45/32 3/2 8/5	27/16	9/5	15/8];
f1=[f,2*f,4];

mh=[1,3,5,8,10,13];
s=[1 3 5 6 8 10 12 13];

n=mh; %for computing grah bhedam and getting derivative
l=n;
derivative=input('enter the derivative no.: ');

for j=1:derivative
    d=zeros(1,length(l));
    d(1)=1;
        for i=1:length(d)-2
            d(i+1)=l(i+2)-l(i+1)+d(i);
        end
    d(end)=13;
    l=d;
end

aroh=d;
avroh=flip(d);

for i=aroh
    raga = a*sin(2*pi*f1(i)*t);
    sound(raga);
        pause(1);
end

    pause(1.5)

for i=avroh
    raga = a*sin(2*pi*f1(i)*t);
    sound(raga);
        pause(1);
end

figure
subplot(2,1,1)
histogram(n)
title('input')
subplot(2,1,2)
histogram(d)
title('output')