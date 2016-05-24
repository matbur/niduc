%m przyjmuje wartoĹ›ci 1, 4, 8, 16
function Z = crcmod (X, m)

  P = ones(1, m+1);
  if (m == 1)
    P = [1 1];
  elseif (m == 4)
    P = [1 0 0 1 1];
  elseif (m == 8)
    P = [1 1 1 0 1 0 1 0 1];
  elseif (m == 16)
    P = [1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1];
  end
  
  Z = [X zeros(1,m)];
  n = length(X);

  for i = 1 : n
    if (Z(i) == 0)
      continue;
    end
    
    Z(i:i+m) = xor(Z(i:i+m),P);
  end

  Z = Z(n+1:n+m);

end
