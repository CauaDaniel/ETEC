Algoritmo "semnome"
// Escreva um programa para aprovar o empréstimo bancário para
//a compra de uma casa.. Pergunte o valor da casa, o salário do comprador e
//em quantos anos ele vai pagar. A prestação mensal, não pode exceder 30% do
// salário ou então o empréstimo será negado.
Var
v, s, a, an: real


Inicio
escreval ("Escreva o valor da casa")
leia (v)
escreval ("Escreva o seu salário")
leia (s)
escreval ("Escreva em quantos anos você vai pagar")
leia (a)

an <- (s * 0.3)

se ( an < s ) então
escreval ("O seu empréstimo foi aceito!")

senao (an > s) então
escreval ("O seu empréstomo foi negado!")

fimse
Fimalgoritmo

FIMSE