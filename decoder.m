function y = decoder(X,m)
  n = length(X);
  rcd = normalize(X(n-m+1:n));
  Pkg = normalize(X(1 : n - m));
  calc = crcmod(Pkg, m);
  y = rcd ~= calc;
  
  if rcd==calc
    y = 0;
  else 
    y = 1;
  endif
end