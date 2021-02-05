clear all;
clc;
% inverse power method
A = [-2 1 4;
    1 1 1;
    4 1 -2];
% intial vector
x0 = [1;2;-1];
% initial eigenvalue guess
e1 = 1;

for i=1:5
    x1=(A-e1*eye(3))\x0;
     x1 = x1/norm(x1);
end
display(x1);

% second theta
% this will converge to eigen vector [0.7;0;-0.7] as e2 is close to this
% eigenvector's eigenvalue.
e2 = -5;
for i=1:5
    x2=(A-e2*eye(3))\x0;
     x2 = x2/norm(x2);
end
display(x2);

% third theta
% this will converge to eigen vector [-0.57;-0.57;-05.7] as e3 is close to this
% eigenvector's eigenvalue 3.
e3 = 3.1;
for i=1:5
    x3=(A-e3*eye(3))\x0;
     x3 = x3/norm(x3);
end
display(x3);