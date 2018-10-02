function r = get_B(M1, B1, M2, B2)
    r = (M2 - M1)'*inv((B1+B2)./2)*(M2 - M1);
    r = r/4 + log(det((B1+B2)./2)/sqrt(det(B1)*det(B2)))/2;
end