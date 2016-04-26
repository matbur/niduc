n = 100;
k = 4;
sigma = 0 : .01 : 5;

ber = [];
err = [];

for i = 1 : length(sigma)
  [ber(i) err(i)] = ARQ(n, k, sigma(i));
end

figure(1);
  subplot(2, 1, 1);
  plot(sigma, ber);

  subplot(2, 1, 2);
  plot(sigma, err);

sigma = 1.5;
k = 1 : 100;

ber = [];
err = [];

for i = 1 : length(k)
  [ber(i) err(i)] = ARQ(n, k(i), sigma);
end

figure(2);
  subplot(2, 1, 1);
  plot(k, ber);

  subplot(2, 1, 2);
  plot(k, err);