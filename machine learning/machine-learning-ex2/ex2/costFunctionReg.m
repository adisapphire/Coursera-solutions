function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta



l=sigmoid(X*theta);

        for i=1:m
            J=J-(log(l(i)))*y(i)-(1-y(i))*(log(1-l(i)));
        end
J=J/m+(lambda*(sum(theta(2:length(theta)).^2)))/(2*m);
theta(1)=0;
for j=1:size(X,2)
for i=1:m
    grad(j)=grad(j)+(l(i)-y(i))*X(i,j);
end
grad(j)=grad(j)/m+(lambda*theta(j))/m;
end



% =============================================================
%(lambda*(sum(theta.^2)))/(2*m)
end
