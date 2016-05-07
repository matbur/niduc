n = 10000;
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
plot(sigma, ber), xlabel('sigma'), ylabel('BER'), title('Wykres 1: BER od sigmy');

subplot(2, 2, 3);
plot(sigma, err), xlabel('sigma'), ylabel('ERR'), title('Wykres 2: ERR od sigmy');


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
plot(k, ber), xlabel('k'), ylabel('BER'), title('Wykres 3: BER od k');

subplot(2, 2, 4);
plot(k, err), xlabel('k'), ylabel('ERR'), title('Wykres 4: ERR od k');
