Algoritmo "semnome"
// Escreva um programa para aprovar o empr�stimo banc�rio para
//a compra de uma casa.. Pergunte o valor da casa, o sal�rio do comprador e
//em quantos anos ele vai pagar. A presta��o mensal, n�o pode exceder 30% do
// sal�rio ou ent�o o empr�stimo ser� negado.
Var
v, s, a, an: real


Inicio
escreval ("Escreva o valor da casa")
leia (v)
escreval ("Escreva o seu sal�rio")
leia (s)
escreval ("Escreva em quantos anos voc� vai pagar")
leia (a)

an <- (s * 0.3)

se ( an < s ) ent�o
escreval ("O seu empr�stimo foi aceito!")

senao (an > s) ent�o
escreval ("O seu empr�stomo foi negado!")

fimse
Fimalgoritmo

FIMSE