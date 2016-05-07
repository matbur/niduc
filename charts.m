n = 100;
k = 10;
sigma = 0 : .2 : 2;
len = length(sigma);

ber = zeros(1, len);
err = zeros(1, len);

for j = 1 : 100
  for i = 1 : len;
    [b, e] = ARQ(n, k, sigma(i));
    ber(i) = ber(i) + b;
    err(i) = err(i) + e;
  end
end

for i = 1 : len
  ber(i) = ber(i) / len;
  err(i) = err(i) / len;
end

subplot(2, 2, 1);
plot(sigma, ber);

subplot(2, 2, 3);
plot(sigma, err);


sigma = 1.5;
k = 10 : 10 : 100;
len = length(k);

ber = zeros(1, len);
err = zeros(1, len);

for j = 1 : 100
  for i = 1 : len;
    [b, e] = ARQ(n, k(i), sigma);
    ber(i) = ber(i) + b;
    err(i) = err(i) + e;
  end
end

for i = 1 : len
  ber(i) = ber(i) / len;
  err(i) = err(i) / len;
end

subplot(2, 2, 2);
plot(k, ber);

subplot(2, 2, 4);
plot(k, err);
