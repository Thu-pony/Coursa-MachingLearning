  function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
    h = 1 ./ (1 + exp(-(X * theta))); %假设函数
    S = sum(y .* log(h) + (1 - y) .* log(1 - h)); %差值求和
    J = -S / m; % cost function
    grad = (sum((h - y) .* X) / m)'; %gradient  
    
    








% =============================================================

end
