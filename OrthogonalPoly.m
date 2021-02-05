l_0 = 1;
l_1 = @(x) x-1;
l_2 = @(x) x^2-4*x+2;
l_3 = @(x) x^3-9*x^2+18*x-6;
fplot(l_0)
hold on 
fplot(l_1)
fplot(l_2)
fplot(l_3)
hold off

% (b) verify that for n = 2 and n = 3. 
% the quadrature nodes xi are the roots of the polynomials l2(x), l3(x)
sprintf('%f',l_2(0.585786))
sprintf('%f',l_2(0.585786))
sprintf('%f',l_2(3.41421))
% n = 3
sprintf('%f',l_3(0.415775))
sprintf('%f',l_3(2.29428))
sprintf('%f',l_3(6.28995))