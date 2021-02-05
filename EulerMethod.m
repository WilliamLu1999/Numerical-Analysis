% question 2(c)
% step size h = 0.1
h = 0.1;

x = 0:h:1;
y = zeros(size(x)); 
% initial value
y(1) = 1;
n = numel(y);
% loop
for i=1:n-1
    f = (-100*y(i)+y(i)*y(i));

    y(i+1) = y(i) + h * f;
end
figure(1)
plot(x,y);



h = 0.02;
x = 0:h:1;
y = zeros(size(x)); 
y(1) = 1;
n = numel(y);
% loop
for i=1:n-1
    f = (-100*y(i)+y(i)*y(i));

    y(i+1) = y(i) + h * f;
end
figure(2)
plot(x,y);




h = 0.001;
x = 0:h:1;
y = zeros(size(x)); 
y(1) = 1;
n = numel(y);
% loop
for i=1:n-1
    f = (-100*y(i)+y(i)*y(i));

    y(i+1) = y(i) + h * f;
end
figure(3)
plot(x,y);