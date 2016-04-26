function Y = canal(X, sigma)
  Y = [];
  for i = 1 : length(X)
    Y(i) = 5 * X(i) + normrnd(0, sigma);
  end
end
