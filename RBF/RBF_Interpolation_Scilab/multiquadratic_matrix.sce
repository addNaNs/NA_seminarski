function [M, r0] = multiquadratic_matrix(X)
    r0 = sqrt(mean(X) * max(X));
    M = multiquadratic(X, r0);
endfunction
