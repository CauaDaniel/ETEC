Algoritmo "semnome"
// Desenvolva um programa que pergunte a distância de uma viagem em Km.
//Calcule o preço da passagem, cobrindo R$0,50 por Km para viagens de até 200Km
//e R$0,45 para viagens mais longas.
Var
d, p, c,c1:real


Inicio
Escreval ("Digite aqui, qual a distância de sua viagem?")
leia (d)
c <- (0.50 * d)
c1 <- (0.45 * d)

se (d = 200) ou (d < 200) então
escreval ("Sua viagem custa: R$", c)
fimse
se (d > 200) entao
Escreval ("Sua viagem custa: R$", c1)

Fimse

Fimalgoritmo
