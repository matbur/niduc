function Y = decoder(X, k)
  n = length(X) / (k+1);
  Y = [];
  for i = 1:n
    b1 = normalize(X(i*(k+1)));
    L = normalize(X(i*(k+1)-k: i*(k+1)-1));
    b2 = mod(sum(L), 2);
    Y(i) = b1 ~= b2;
  endfor
endfunction

function y = normalize(x)
  y = x >= 2.5;
endfunction
