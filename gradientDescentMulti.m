function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
	gradJ = 1/(2*m) * 2 * (X'* X * theta - X' *y);
	theta = theta - alpha * gradJ; 

    J_history(iter) = computeCostMulti(X, y, theta);

end

end
