


%EXERCICE 2

%%
%2.1


gauss1000=randn([1 1000]);%fill a vector with 1000 random gaussian value

gauss10000=randn([1 10000]);%fill a vector with 10000 random gaussian value

figure
subplot(2,2,1)
plot(gauss1000);
title('random gaussian noise with 1000 points')

subplot(2,2,2)
plot(gauss10000);
title('random gaussian noise with 10000 points')

subplot(2,2,3)
hist(gauss1000,100);
title('hist random gaussian noise with 1000 points')

subplot(2,2,4)
hist(gauss10000,100);
title('hist random gaussian noise with 10000 points')




%The two plot have quite similar data, the "denser" look of 10000 is due to
%the rescalling of the data to fit it inside the plot (with 10000 the
%distance is 10 time smaller between 2 points so the graph appear 10 time
%"denser". For the histogram we can see that it draw a gaussian bell.
%However the more point we get and the more "complete" and close to a
%perfect gaussian bell our histogram will be

%%
%2.2


distrib1000=rand([1 1000]);


distrib10000=rand([1 10000]);

figure
subplot(2,2,1)
plot(distrib1000);
title('random unify noise with 1000 points')

subplot(2,2,2)
plot(distrib10000);
title('random unify noise with 10000 points')

subplot(2,2,3)
hist(distrib1000);
title('hist random unify noise with 1000 points')

subplot(2,2,4)
hist(distrib10000);
title('hist random unify noise with 10000 points')


%We can see there that the randomness is equivalently spread along all the
%value . We this distribution we have an equal chance of picking any number

%%
%2.3

figure

subplot(2,1,1)
autocor=xcorr(gauss10000); % Gaussian Noise Auto correlation
stem(autocor)
title('10000 points Gaussian noise with autocorrelation')


subplot(2,1,2)
autocor=xcorr(distrib10000); % Uniform Noise
stem(autocor)
title('10000 points unify noise with autocorrelation')


%An autocorrelation is basically a convolution by itself. Here we have two
%case :
%
%Gaussian Noise : the way that the noise is spread over the spectrum show
%us that the signal contains no patern and never match itself . This is a
%white signal.
%
% Uniform randomness: Give us a triangle shape. This shape show us that the
% signal is equally random on all the plane . It match itself the best
% without 'retard' (wich can be seens as the mean of the random
% signal).this isn t a white signal.

%%
%2.4

s1=round(rand(1,50));%creating a binary random signal
s2=round(rand(1,50));%creating a binary random signal
s3=round(rand(1,50));%creating a binary random signal

s=zeros([1,400]);%creating an empty matrix


for i = 1 : 50
    s(i)=s1(i)
    s(i+100)=s2(i)
    s(i+300)=s3(i)
end


figure
subplot(4,1,1)
plot(distrib1000);
title('Signal made out of 3 shifted binary random signals')

subplot(4,1,2)
autocor=xcorr(s,s1);
stem(autocor)
title('Autocorrelation with the 1st signal')

subplot(4,1,3)
autocor=xcorr(s,s2);
stem(autocor)
title('Autocorrelation with the 2st signal')

subplot(4,1,4)
autocor=xcorr(s,s3);
stem(autocor)
title('Autocorrelation with the 3st signal')





%%We remark that the autocorrelation make the shifting appear and even tell
%%us how much it is shifted. We can deduce that autocorrelations allow us to find hidden signal in a signal

