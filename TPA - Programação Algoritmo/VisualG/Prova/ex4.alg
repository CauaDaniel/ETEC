Algoritmo "semnome"
// Jo�o Papo-de-Pescador, homem de bem, comprou um microcomputador para
//controlar o rendimento di�rio de seu trabalho.
// Toda vez que ele traz um peso de peixes maior que o estabelecido pelo
//regulamento de pesca do estado de S�o Paulo (50 quilos) deve pagar um multa
//de R$ 7,00 por quilo excedente. Jo�o precisa que voc� fa�a um programa que leia a vari�vel
// P (peso de peixes) e verifique se h� excesso. Se houver, gravar na vari�vel E (Excesso) e na vari�vel M o valor da multa que Jo�o dever� pagar. Caso contr�rio mostrar a mensagem �Peso dentro dos limites estabelecidos�

Var
P, M, X: inteiro


Inicio
Escreval ("digite qual o peso do peixe pescado:")
leia (P)

X <- (P - 50) * 7
M <- 7 + X

limpatela ()
se (P > 50) ent�o
escreval ("Voc� foi multado em:", M)
senao
Escreval ("�timo voc� n�o foi multado")


Fimalgoritmo
Fimse