function X = rand_bin_matrix(M)
    X = zeros(size(M));
    for i=1:size(M, 1)
        for j=1:size(M, 2)
            X(i, j) = floor(rand()/M(i, j));
        end;
    end
end