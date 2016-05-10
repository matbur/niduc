n = 1000;
k = 10;
sigma = 0 : .3 : 2;
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

subplot(2, 2, 1);
plot(sigma, ber), xlabel('sigma'), ylabel('BER'), title('Wykres 1: BER od sigmy');

subplot(2, 2, 3);
plot(sigma, eff), xlabel('sigma'), ylabel('EFF'), title('Wykres 2: EFF od sigmy');


sigma = 1;
k = 10 : 10 : 100;
len = length(k);

ber = zeros(1, len);
eff = zeros(1, len);

for j = 1 : rep
  for i = 1 : len;
    [b, e] = ARQ(n, k(i), sigma);
    ber(i) = ber(i) + b;
    eff(i) = eff(i) + e;
  end
end

for i = 1 : len
  ber(i) = ber(i) / rep;
  eff(i) = eff(i) / rep;
end

subplot(2, 2, 2);
plot(k, ber), xlabel('k'), ylabel('BER'), title('Wykres 3: BER od k');

subplot(2, 2, 4);
plot(k, eff), xlabel('k'), ylabel('EFF'), title('Wykres 4: EFF od k');

