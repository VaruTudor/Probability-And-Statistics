clc
clear
close all

%Lab4-2.b
%Goian Tudor George, IE2, gr923/2

%   for Bern(p)
p = 0.35;
N = 100;

X = rand(1,N); %we create a vector on N random numbers int (0,1)
Y = X < p;  %we change the values to 1 for the ones smaller then p and 0 to the rest
            %so 1 is every success
s = sum(Y); %we sum up all the values in Y (all successes)
fr_rel = s/N;   %we compute the relative frequence

[p fr_rel];

%   for Bino(n,p) we need n independent Bern(p)
n = 10;
N = 200;    %nr simulations

X = rand(n,N);                  %this time we will have n rows one for each
Y = X < p;                      % same reasoning as above
Sum_success = sum(Y);

fr_rel = [0:n;zeros(1,n+1)];    %first row is nr of successes
                                %second will be computed in the next for
for i = 1:n+1
    fr_rel(2,i) = sum(Sum_success == (i-1));
end

[fr_rel]

[fr_rel;fr_rel(2,:)/N;binopdf(fr_rel(1,:),n,p)]




