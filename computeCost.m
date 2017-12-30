function J = computeCost(X, y, theta)

% Initialize some useful values
m = length(y); % number of training examples
 
J = 0;
predict = X*theta;
Sq = (predict - y).^2;
J = 1/(2*m) * sum(Sq);

end
