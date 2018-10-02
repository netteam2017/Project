function [M, B] = get_params(X)

    N = size(X, 2);
    M = zeros(2, 1);
    B = zeros(2,2);
    for i = 1:N
        M = M + X(:,i);
    end;
    M= M./N;
    for i = 1:N
        B = B+ (X(:,i)*X(:,i)' - M*M');
        
    end;
    B=B./N;

end