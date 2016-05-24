function [ber, eff] = ARQ(n, k, sigma, m)
  ee = 0;

  G = generator(n);
  E = encoder(G, k, m);
  C = canal(E, sigma);

  c = n / (k + m);
  for i = 1 : c
    b = (i - 1) * (k + m) + 1;
    e = i * (k + m);
    d = decoder(C(b:e), m);
    while d == 1
      ee = ee + k;
      C(b:e) = canal(E(b:e), sigma);
      d = decoder(C(b:e), m);
    end
  end
  ber = ee / n;
  eff = n / (n + ee + c);
end
