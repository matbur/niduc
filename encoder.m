function y = encoder(x, k)
    n = length(x) / k;
    y = [];
    for i = 1:n
      l = x(k*(i-1)+1: k*i);
      l(k+1) = mod(sum(l), 2);
      y = [y l];
    endfor
endfunction
