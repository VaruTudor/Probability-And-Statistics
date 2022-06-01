clc
clear
close all

n = input('Number of trials = ');
p = input('Probability of success = ');

x = 0:1:n;
% binopdf binomial probability density function
px = binopdf(x,n,p);
disp([x;px]);

figure(1)
hold on
plot(x,px,'bo')
title('PDF')