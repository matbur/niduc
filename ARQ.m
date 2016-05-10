function [ber, eff] = ARQ(n, k, sigma)
  ee = 0;

  G = generator(n);
  E = encoder(G, k);
  C = canal(E, sigma);

  c = n / k;
  for i = 1 : c
    b = i * (k + 1) - k;
    e = i * (k + 1);
    d = decoder(C(b:e));
    ee = ee + k;
    while d == 1
      C(b:e) = canal(E(b:e), sigma);
      d = decoder(C(b:e));
      ee = ee + k;
    end
  end
  ber = ee / n;
  eff = n / (n + ee);
end
