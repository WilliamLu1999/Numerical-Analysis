clear all;
clc;
A = [-2 1 4;
    1 1 1;
    4 1 -2];
% two x0
x0 = [1;2;-1];
x_0 = [1;2;1];
h = [-1;-1;2];
% iteration for the first x0
for i=1:5
    x0 = A*x0;
    x0 = x0/norm(x0);
end 
display(x0);
% iteration for the second x_0
for i=1:5
    x_0 = A*x_0;
    x_0 = x_0/norm(x_0);
end 
display(x_0);

for i=1:10000
    h = A*h;
   h = h/norm(h);
end 
display(h);

[V,D]=eig(A);
display(V);
display(D);
return
