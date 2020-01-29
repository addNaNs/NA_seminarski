function R = radial_matrix(X)

    [nrows, ncols] = size(X);
    R = zeros(nrows, nrows);
    for i = 1:nrows
        for j = (i+1):nrows
            R(i,j) = radial_distance(X(i,:),X(j,:));
            R(j,i) = R(i,j);
        end
    end

endfunction
