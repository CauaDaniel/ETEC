Algoritmo "semnome"
// João Papo-de-Pescador, homem de bem, comprou um microcomputador para
//controlar o rendimento diário de seu trabalho.
// Toda vez que ele traz um peso de peixes maior que o estabelecido pelo
//regulamento de pesca do estado de São Paulo (50 quilos) deve pagar um multa
//de R$ 7,00 por quilo excedente. João precisa que você faça um programa que leia a variável
// P (peso de peixes) e verifique se há excesso. Se houver, gravar na variável E (Excesso) e na variável M o valor da multa que João deverá pagar. Caso contrário mostrar a mensagem “Peso dentro dos limites estabelecidos”

Var
P, M, X: inteiro


Inicio
Escreval ("digite qual o peso do peixe pescado:")
leia (P)

X <- (P - 50) * 7
M <- 7 + X

limpatela ()
se (P > 50) então
escreval ("Você foi multado em:", M)
senao
Escreval ("Ótimo você não foi multado")


Fimalgoritmo
Fimse