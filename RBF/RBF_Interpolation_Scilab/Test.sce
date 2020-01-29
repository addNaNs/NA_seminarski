function [y_test, y_pred] = Test(f, nargs, train_size, test_size)
    X_train = rand(train_size, nargs) * 1000 - 500;
    X_test = rand(test_size, nargs) * 1000 - 500;

    y_train = zeros(train_size, 1);
    y_test = zeros(test_size, 1);
    y_pred = zeros(test_size, 1);

    for i=1:train_size
        y_train(i) = f(X_train(i,:));
    end

    for i=1:test_size
        y_test(i) = f(X_test(i,:));
    end
    
    y_pred = RBF_one_time_evaluation(X_train, y_train, X_test);




endfunction
