function Est = RBF_one_time_evaluation(X, Y, A)
    [W, r0] = RBF_weights(X,Y);
    Est = RBF_evaluate(A, X, W, r0);
endfunction
