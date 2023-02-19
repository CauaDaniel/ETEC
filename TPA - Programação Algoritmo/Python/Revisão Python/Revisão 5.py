idade = int (input('Informe sua idade: '))

if idade < 16:
    print('Você não é eleitor ainda...')
elif idade >=18 and idade <= 65:
    print ('Você é um eleitor OBRIGATÓRIO')
else:
    print('Você é um eleitor FACULTATIVO')