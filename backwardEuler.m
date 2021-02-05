clear all
% y' = -100y+y^2
% bound and step size
a = 0;
b = 1;
h = 0.1;
h_2 = 0.02;
h_3 = 0.001;
x = a:h:b;
% initial value y0 = 1
y(1) = 1;
% y(i+1) = y(i)+h*-100(yi+1)+(yi+1)^2)
% 0 = y(i)+h*-100(yi+1)+(yi+1)^2-y(i+1)
% define y(i+1) as Y

options = optimset('TolX',1e-10);
for i =1:length(x)-1
    y(i+1) = fzero(@(Y) y(i)+ h*-100*Y+Y*(Y-1),y(i),options);
end

figure(1)
plot(x,y)

for i =1:length(x)-1
    y(i+1) = fzero(@(Y) y(i)+ h_2*-100*Y+Y*Y-Y,y(i),options);
end

figure(2)
plot(x,y)

