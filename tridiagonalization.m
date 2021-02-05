% Illustration of Householder & Givens for tridiagonalization

A = [4 1 2 1 2;
     1 3 0 -3 4;
     2 0 1 2 2;
     1 -3 2 4 1;
     2 4 2 1 1];

% Householder

x = A(2:5,1);

v1 = x + sign(x(1))*sqrt(x'*x)*[1,0,0,0]';
v = [0;v1];
H = eye(5) - 2/(v'*v)*v*v';
display(H)
A1 = H*A*H';
display(A1)

% next step
x = A1(3:5,2);
v1 = x + sign(x(1))*sqrt(x'*x)*[1,0,0]';
v = [0;0;v1];
H = eye(5) - 2/(v'*v)*v*v';
A2 = H*A1*H';

% next step
x = A2(4:5,3);
v1 = x + sign(x(1))*sqrt(x'*x)*[1,0]';
v = [0;0;0;v1];
H = eye(5) - 2/(v'*v)*v*v';
A3 = H*A2*H';

% --------------------------
% test: try to diagonalize
% Test from class to illustrate that one cannot generate a
% diagonal matrix with Householder transformations from both sides. 

x = A(1:5,1);
v1 = x + sign(x(1))*sqrt(x'*x)*[1,0,0,0,0]';
v = v1;
H = eye(5) - 2/(v'*v)*v*v';
A1 = H*A;
A1p = H*A*H';






