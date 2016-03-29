n = 20
k = 3
sigma = 1.5

G = generator(n)

E = encoder(G, k)

C = canal(E, sigma)

D = decoder(C, k)
