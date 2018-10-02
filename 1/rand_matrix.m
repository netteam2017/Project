function X = rand_matrix(M, B, N)

A = zeros(2,2);
A(1,1) = sqrt(B(1,1));
A(2,1) =  B(1,2)/sqrt(B(1,1));
A(2,2) = sqrt(B(2,2) - (B(1,2)*B(1,2)/B(1,1)));

X = normrnd(0, 1, 2, N);

for i = 1:N    
    X(:, i) = A*X(:, i) + M;
end
end