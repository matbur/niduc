function Y = ber(X, V)
    

  n = length(X);
  d = xor(normalize(X),V);
  Y = sum(d)/n*100;
  %%w procentach
end


function y = normalize(x)
  y = x >= 2.5;
end
