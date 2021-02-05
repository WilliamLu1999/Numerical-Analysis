f_poly = @(x) x^3-3/2*x^2+3/5*x-1/20;
% find the roots of the polynomial
p = [1 -3/2 3/5 -1/20];
r = roots(p);
display(r);

% roots of the polynomial
r_0 = 0.1127;
r_1 = 0.5;
r_2 = 0.8873;

syms x;

% the lagrange polynomials L_k
L_0 = (x-0.5)*(x-0.8873)/(0.3);
L_1 = (x-0.1127)*(x-0.8873)/(-0.15);
L_2 = (x-0.1127)*(x-0.5)/(0.3);

% square of L_k (for calculating W_k)
L_0_sq = L_0.*L_0;
L_1_sq = L_1.*L_1;
L_2_sq = L_2.*L_2;

W_0 = vpaintegral(L_0_sq,[0 1]);
W_1 = vpaintegral(L_1_sq,[0 1]);
W_2 = vpaintegral(L_2_sq,[0 1]);
 
display(W_0);
display(W_1);
display(W_2);

% This loop calculates Ii through Gassian Quadrature.
for k= 1:1:7
    f= @(x) x^k+x;
    g = W_0*f(r_0)+W_1*f(r_1)+W_2*f(r_2);
    display(vpaintegral(g,[0 1]));
end    

% This loop calculates Ii through Simpson rule.
for k = 1:1:7
    f = @(x) x^k+x;
    s = 1/6*(f(r_0)+4*f(r_1)+f(r_2));
    display(s);
end


