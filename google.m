clear all;
n = 100;
I = eye(n);
A = 0.5*I(randperm(n),:) + (max(2,randn(n,n))-2);
A = A - diag(diag(A));
L = A*diag(1./(max(1e-10,sum(A,1))));
% part a
figure;spy(L);

% part b
% real part of eigen values of L
rE = real(eig(L));
iE = imag(eig(L));
figure;plot(rE,iE,'*');

x = linspace(-1,1,100);
yUp = sqrt(1-x.^2); 
yLow = -yUp;
hold on
plot(x,yUp,'-r')
hold on
plot(x,yLow,'-r')
axis equal
xlabel('real part(rE) of eigne values')
ylabel('immaginary(iE) part of eigne values')
title('Eigen values of L')


