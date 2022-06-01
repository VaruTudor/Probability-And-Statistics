
clc
clear
close all

n=3;
p=0.5;

%a)
fprintf('a)\n')
x=0:1:3;
px=binopdf(x,n,p);
fprintf('PDF\n')
disp([x;px])

%b)
fprintf('b)\n')
x=0:3;
fx=binocdf(x,n,p);
fprintf('CDF\n')
disp([x;fx])

%c)

fprintf('c)\n')
fprintf('P(X=0)=%f\n',binopdf(0,n,p))
%P(X<>1)=1-P(X=1)
fprintf('P(X<>1)=%f\n',1-binopdf(1,n,p))

%d)
fprintf('d)\n')
%P(X<=2)=Fx(2)
fprintf('P(X<=2)=%f\n',binocdf(2,n,p))
%P(X<2)=P(X<=1)=P(X<=a), a in [1,2)
fprintf('P(X<2)=%f\n',binocdf(1,n,p))

%e)
fprintf('e)\n')
%P(X>1)=1-P(X<=1)=1-Fx(1)
fprintf('P(X>1)=%f\n',1-binocdf(1,n,p))
%P(X>=1)=1-P(X<1)=1-P(X<=0)=1-Fx(0)
fprintf('P(X>=1)=%f\n',1-binocdf(0,n,p))

% %f)
 fprintf('f)\n')
 N=10000;
 U=rand(3,N);
 Y=(U<0.5);
 S=sum(Y);
 
 vect_fr=zeros(1,4);
 
 for i=1:4
 vect_fr(i)=sum((S==(i-1)));
 end
 [x;px;vect_fr/N]
