Algoritmo "semnome"
// Escreva um programa que leia a velocidade de um carro.
//Se ele ultrapassar 80km/h, mostre uma mensagem dizendo que ele foi multado.
// A multa vai custar R$7,00 por cada Km acima do limite.
Var
v, m, x:inteiro


Inicio
escreval ("Escreva a velocidede do carro (em KM/h)")
leia (v)

x <- v - 80
m <- (x) * 7

limpatela()
se (v < 80) então
escreval ("Ótimo, você não foi multado!")
senao
Escreval ("Você foi multado por ultrapassar 80km/h, valor da multa: R$", m)
FIMSE




Fimalgoritmo



