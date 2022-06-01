%Lab5 - A
%Goian Tudor George, IE2, gr923/2
X = [20:27;2,1,3,6,5,9,2,2];
[X];

Y = [75:82;3,2,2,5,8,8,1,1];
[Y];

%a)
[mean(X,'all')];
[X;mean(X)];
[mean(Y,'all')];
[Y;mean(Y)];

%b)
[X;var(X)];
[Y;var(Y)];

%c)
[X;cov(X)];
[Y;cov(Y)];

%d)
[corrcoef(X,Y)]