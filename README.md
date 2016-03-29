# niduc

## Moduły:
1. y = generator(n) - generuje losowy ciąg bitów o długości n
2. y = encoder(x, k) - dodaje do x bit parzystości co k bitów. Niepełną paczkę ignoruje.
3. [y z] = canal(x, sigma) - zamienia bity na napięcia. y - z zakłóceniami, z - bez
4. decoder(x, k) - odbiera ciąg bitów, porównuje z bitem parzystości i podejmuje decyzje, czy wysłać jeszcze raz


TODO:
- dopisać decoder
