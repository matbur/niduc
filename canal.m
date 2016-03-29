function [y z] = canal(x, sigma)
  y = [];
  z = [];
  for i = 1:length(x)
    y(i) = 5 * x(i) + normrnd(0, sigma);
    z(i) = 5 * x(i);
  endfor
endfunction