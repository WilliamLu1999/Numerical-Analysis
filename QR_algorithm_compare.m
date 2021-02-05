%% Matrix
%  make random symmetric, tridiagonal matrix


n=5;
A=[7.034 -2.271 0 0 0;
   -2.271 2.707 -0.744 0 0;
   0 -0.744 5.804 3.202 0;
   0 0 3.202 -0.464 1.419;
   0 0 0 1.419 -2.082];

B = [9 -5 0;
    -5 12 -1.28;
    0 -1.28 2.96];


%% simplest QR-algorithm 

Ak = A;
for k=1:2
    [Q,R] = qr(Ak);
    Ak = R*Q;
end


Bk = B;
for k=1:1
    [Q,R] = qr(Bk);
    Bk = R*Q;
end
display(Bk)

