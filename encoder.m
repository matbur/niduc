function Y = encoder(X, k)
  n = length(X) / k;
  Y = [];
  for i = 1 : n
    L = X(k * (i - 1) + 1 : k * i);
    L(k + 1) = mod(sum(L), 2);
    Y = [Y L];
  end
end
