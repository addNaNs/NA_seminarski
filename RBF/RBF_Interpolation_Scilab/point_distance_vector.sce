function W1 = point_distance_vector(A, X, r0)
    
    [xrows,xcols] = size(X);
    [arows,acols] = size(A);
    W1 = zeros(arows, xrows);
    for i = 1:arows
        for j = 1:xrows
            W1(i,j) = radial_distance(A(i,:), X(j,:));
        end
    end
    W1 = multiquadratic(W1, r0);

endfunction
