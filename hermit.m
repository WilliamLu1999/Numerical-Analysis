f = @(x) 3*exp(x);
H_0 = @(x) 16*x^3-12*x^2+1;
H_1 = @(x) -16*x^3+12*x^2;
K_0 =@(x) -2*x^3+x;
K_1=@(x) 4*x^3-2*x^2;


fplot(H_0)
hold on
fplot(H_1)
fplot(K_0)
fplot(K_1)

hold off
figure;fplot(f)
hold on
y_0 = 3;
y_1 = 3*exp(1/2);
z_0 = 3;
z_1 = 3*exp(1/2);


p_3 =  @(x) y_0*(16*x^3-12*x^2+1)+y_1*(-16*x^3+12*x^2)+z_0*(-2*x^3+x)+z_1*(4*x^3-2*x^2);
fplot(p_3);

