#Leia o nome, sexo e idade de uma pessoa. Se a pessoa for do sexo feminino e tiver menos de 25 anos então imprimir nome e
# mensagem: ACEITA, caso contrario, imprimir NAO ACEITA

nome = (input('Digite o seu nome: '))
idade = int (input('Digite sua idade: '))
sexo = (input('Digite seu sexo: '))



if sexo == 'f' or 'F' and idade < 25:
    print('{}: ACEITO (A)!!'.format(nome))
else:
    print ('{}:  NÃO ACEITO(A)!'.format(nome))