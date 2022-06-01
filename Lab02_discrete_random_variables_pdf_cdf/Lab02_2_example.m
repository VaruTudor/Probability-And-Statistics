clc
clear
close all

n=input('Number of trials=');
p=input('Probability of succes=');

x=0:1:n;
px=binopdf(x,n,p);
%px=pdf('bino',x,n,p);
fprintf('PDf binomial distribution\n')
disp([x;px])
fprintf('\n')

% pxm=zeros(1,n+1);
% for k=0:n
% pxm(k+1)=nchoosek(n,k)*p^k*(1-p)^(n-k);
% end
% pxm

fx=binocdf(x,n,p);
%fx=cdf('bino',x,n,p)
fprintf('CDF binomial distribution\n')
disp([x;fx])

% fxm=zeros(1,n+1);
% for k=0:n
% fxm(k+1)=sum(pxm(1:k+1));
% end
% fxm

figure(1)
hold on
plot(x,px,'bo')
title('PDF')

figure(2)
hold on
plot(x,fx,'r*')
title('CDF')

figure(3)
hold on
stairs(fx)
title('CDF')