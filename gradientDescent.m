function [theta] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
n=size(X,2);
J_history = zeros(num_iters, 1);
for iter = 1:num_iters,
  diff=zeros(n,1);
  for j=1:n,
    diff_value=0;
    for i=1:m,
      diff_value=diff_value+(((X(i,:)*theta)-y(i))*X(i,j));
    endfor
    diff(j,1)=diff_value*(alpha/m);
  endfor
  theta=theta-diff;
  

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
  %J_history(iter) = computeCost(X, y, theta);

endfor

endfunction
