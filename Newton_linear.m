% Solve the nonlinear equation
%        x^3 = 0
% using Newton's method.  This is to demonstrate that you may not have quadratic
% convergence if the assumptions of the statement are not satisfied


clear all;
clc;
xx = -1:0.01:1;
ff = xx.^3;
plot(xx,ff, '-k', 'Linewidth', 2); hold on;
plot(xx,0*xx,'-r','Linewidth', 2);

x = 1.;

fprintf('\nNewtons method \n');
fprintf('%10s    %12s           %12s\n', 'Iteration', 'Iterate x_k', 'Value f(x_k)');
for i=1:100
    % Newton's method
    x = x - x^3/(3*x^2);
    fprintf('%10d    %.16f    %10s\n', i, x, x^3 );
    
    if (abs(x^3) < 1e-14)
       fprintf('Converged after %d iterations.\n', i)
       break;
   end
end