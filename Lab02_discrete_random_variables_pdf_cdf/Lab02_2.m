clc
clear
close all

n = input('Number of trials = ');
p = input('Probability of success = ');
x = 0:1:n;

px = binopdf(x,n,p);
%px = pdf('bino',x,n,p)

fprintf('PDF binomial distribution\n')
disp([x;px]);
fprintf('\n');

% pxm=zeros(1,n+1);
% for k=0:n
% pxm(k+1) = nchoose(n,k)*p^k*(1-p)^(p-k);
% end

fx = binocdf(x,n,p);
%fx = cdf('bino',x,n,p);
fprintf('CDF binomoial distribution\n')
disp([x;fx]);

%calcul muncitoresc
fxm = zeros(1,n+1);
for k=0:n
fxm(k+1) = sum(fxm(1:k+1));
end
%
figure(1)
hold on
plot(x,px,'bc')
title('PDF');

figure(2)
hold on
plot(x,fx,'r*')
title('CDF');

figure(3)
hold on
stairs(Ex)
title('CDF')

