produto = float (input('Digite o valor do produto adquirido: R$'))

lucro45 = produto *0.45
lucro30 = produto *0.30
valorlucro = produto + lucro45
valorlucro2 = produto + lucro30
if produto < 20:
    print ('O seu lucro foi de 45% \nValor vendido: R${}'.format(valorlucro))
elif produto > 20:
    print('O seu lucro foi de 30% \nValor vendido: R${}'.format(valorlucro2))