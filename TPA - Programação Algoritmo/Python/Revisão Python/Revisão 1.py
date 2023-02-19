#Leia o salario de uma pessoa e imprima o desconto do INSS segundo a tabela abaixo:

salario = int (input('Digite o salário: R$ '))

if salario <= 600:
    print ('Está pessoa está ISENTA de descontos')
elif salario >600 and salario <= 1200:
    print('O desconto do INSS é de 20% !!')
elif salario >1200 and salario <= 2000:
    print('O desconto do INSS é de 25% !!')
else:
    print('O desconto do INSS é de 30% !!')