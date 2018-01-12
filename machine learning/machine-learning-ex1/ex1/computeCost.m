function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J=0;
siz=size(X,2);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%  

for i = 1:m
    h=0;
    for j= 1:siz
   h=h+ theta(j)*X(i,j);
    end
    h=h-y(i);
    h=h^2;
    J=J+h;
end
J=J/(2*m);



% =========================================================================

end