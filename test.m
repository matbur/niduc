n = 1000;
k = 10;
sigma = 0 : .3 : 1.5;
len = length(sigma);
rep = 10;

ber = zeros(1, len);
eff = zeros(1, len);

for j = 1 : rep
  for i = 1 : len;
    [b, e] = ARQ(n, k, sigma(i));
    ber(i) = ber(i) + b;
    eff(i) = eff(i) + e;
  end
end

for i = 1 : len
  ber(i) = ber(i) / rep;
  eff(i) = eff(i) / rep;
end

ber
eff
