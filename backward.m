function x=backward(A,b)
size_A = size(A);
size_b = size(b);
% check the vecetor size
if size_b(1) == size_A(1)
    n = size_b(1);
    x = zeros(n,1);
    x(n) = b(n)/A(n,n);
    for i = n-1:-1:1
        x(i) = (b(i)-A(i,i+1:n)*x(i+1:n))/A(i,i);
    end
    
else
    error('dimentions are not matched');
end









