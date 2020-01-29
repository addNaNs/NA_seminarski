function [W, r0] = RBF_weights(X,Y)
    [W1, r0] = multiquadratic_matrix(radial_matrix(X));
    W = linsolve(W1,-Y);
endfunction
