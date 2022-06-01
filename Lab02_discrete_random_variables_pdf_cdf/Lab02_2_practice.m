clc
clear
close all

nr_trials = 3;
px = 0.5;

%a)
fprintf('a)\n')
tosses = 0:3;
fx = binopdf(tosses, nr_trials, px);
fprintf('PDF\n');
disp([tosses;fx]);

%b)
fprintf('b)\n')
tosses = 0:3;
fx = binocdf(tosses, nr_trials, px);
fprintf('CDF\n');
disp([tosses;fx]);

%c)
fprintf('c)\n')
fprintf('P(X=0)= %f\n',binopdf(0,nr_trials,px))
fprintf('P(X<>0= %f\n',1-binopdf(1,nr_trials,px))

%d)
fprintf('d)\n')
fprintf('P(X<=2)= %f\n',binocdf(2,nr_trials,px))
fprintf('P(X<2)= %f\n',binocdf(1,nr_trials,px))

%e)
fprintf('e)\n')
fprintf('P(X>=1)= %f\n',1-binocdf(0,nr_trials,px))
fprintf('P(X>1)= %f\n',1-binocdf(1,nr_trials,px))

%f)
fprintf('f)\n')
N = 10;
U = rand(3,N);
Y = (U<0.5);
S = sum(Y);


vect_fr = zeros(1,4);

for i=1:4
    vect_fr(i) = sum( (S==(i-1)) );
end
%[tosses;px;vect_fr/N]

