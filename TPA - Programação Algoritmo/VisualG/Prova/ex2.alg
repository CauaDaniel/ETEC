Algoritmo "semnome"
// Desenvolva um programa que pergunte a dist�ncia de uma viagem em Km.
//Calcule o pre�o da passagem, cobrindo R$0,50 por Km para viagens de at� 200Km
//e R$0,45 para viagens mais longas.
Var
d, p, c,c1:real


Inicio
Escreval ("Digite aqui, qual a dist�ncia de sua viagem?")
leia (d)
c <- (0.50 * d)
c1 <- (0.45 * d)

se (d = 200) ou (d < 200) ent�o
escreval ("Sua viagem custa: R$", c)
fimse
se (d > 200) entao
Escreval ("Sua viagem custa: R$", c1)

Fimse

Fimalgoritmo
