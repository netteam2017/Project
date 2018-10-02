function r = get_M(M1, M2, B)
    r = (M2 - M1)'*inv(B)*(M2 - M1);
end