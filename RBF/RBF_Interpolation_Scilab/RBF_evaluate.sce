function Est = RBF_evaluate(A, X, W, r0)
    
    Est = point_distance_vector(A,X,r0) * W;
    
endfunction
