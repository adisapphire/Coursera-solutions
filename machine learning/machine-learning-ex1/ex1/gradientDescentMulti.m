function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
siz=size(X,2);
        h=zeros(siz,1);
           
    for j =1:siz
        for i = 1:m
            a=0;
            for k= 1:siz
                 a=a+ theta(k)*X(i,k);
            end
            a=a-y(i);
            a=a*X(i,j);
            h(j)=h(j)+a;
        end
        h(j)=h(j)/m;
    end
    for j=1:siz
        theta(j)=theta(j)-alpha*(h(j));
    end
    








    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
