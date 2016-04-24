function y = decoder(X)
  n = length(X);
  rcd = normalize(X(n));
  Pkg = normalize(X(1:n-1));
  calc = mod(sum(Pkg), 2);
  y = rcd ~= calc;
end
