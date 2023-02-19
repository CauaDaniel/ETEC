nascimento = int (input('Digite o ano que você nasceu: '))
anoatual = int (input('Digite o ano atual: '))

idade = anoatual - nascimento

if nascimento > anoatual:
    print('O ano atual não condiz com sua idade, tente novamente!!')
else:
    print ("Sua idade com base no ano, é: {} anos".format(idade))