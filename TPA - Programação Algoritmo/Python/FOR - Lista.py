#22 - Elabore um programa que apresente os números pares de 1 a 100.

S = 0
for cont in range(0,101,2):
    print (cont)


#23 - Desenvolva um programaque leia 50 números inteiros, conte quantos são divisíveis por 3 e exiba o resultado.

S = 0
for cont in range (0,50):
    n=int(input('Digite um número:' ))
    if (n %3) == 0:
        S = S+1
        print('Divisivel por 3:',n)
    else:
        print ('Não é Divisivel')
print('Tem {} núemro que é divisivel por 3'.format (S))


#24 - Desenvolva um programaque leia 40 números reais, somar e calcular a média dos números positivos e contar os números negativos e exiba os resultados.

S = C = P = 0

for cont in range (0,40):
    n=float(input('Digite um número: '))
    if n >= 0:
        S= S+1
        C = n+C
        m= C / S
    elif n < 0:
        P = P+1
print('A média dos números positivos é: ',m)
print('Entre estes 40 números, existem {} negativos'.format(P))


#25 - Desenvolva um programaque leia o nome e a idade de 20 pessoas, calcule e exiba a média das idades.     

S = SM =0

for c in range (0,20):
    n = str(input('Digite seu nome: '))
    i= int(input('Digite sua idade: '))
S = S + 1
SM = SM + i 
m = SM / S
print ('A média das pessoas é:',m)

#26 - Desenvolva um programaque leia o sexo (Masculino / Feminino) e o salário de 15 pessoas, calcule e exiba a média dos salários dos homens e das mulheres.

S = D = F = G = 0
for c in range (0,15):
    g = str(input('''Digite seu genêro:
    F = Feminino
    M = Masculino'''))
    sa=float(input('Digite seu salário: '))
if g == "F" and 'f':
    S += 1
    D = sa + D
    m = D / S
    print("A média do salário das mulheres é de: ",m)
elif g == "M" and 'm':
    F += 1
    G = sa + G
    Macho = G / F    
    print("A média do salário dos homens é de: ",Macho)


#27 - Crie um programa que calcule a soma entre todos os números ímpares que são múltiplos de três e que se encontram no intervalo de 1 até 500.

S = 0
for c in range (0,501,3):
    S = c + c
print ('A soma de dos números impares que são multiplos de 3 que se encontram entre 1-500 são:',S)


#28 - Desenvolva um programa que leia o primeiro termo e a razão de uma PA (Progressão Aritmética). No final, mostre os 10 primeiros termos dessa progressão.

a1 = int(input('Digite o termo inicial: '))
r = int(input('Digite a razão: '))
dt = a1 + (11-1) * r
for c in range(a1,dt,r):
    print('Os 10 primeiros termos dessa progressão é:',c)


#29 - Um total de 500 alunos de uma universidade foram entrevistados. De cada um deles foram colhidas as seguintes informações: o código do curso que freqüenta (1-engenharia; 2-computação; 3-administração) e a idade. Desenvolva um programaque processe estes dados e que forneça as seguintes informações:
#• número de alunos por curso;
#• número de alunos com idade entre 20 e 25 anos, por curso; e
#• qual o curso com menor média de idade.

S1 = S2 = S3 = S4 = S5 = S6 = S7 = S8 = S9 = S10 = S11 = S12 = m1 = m2 = m3 = 0
for c in range(0,500):
    curso=str(input('''     	  \033[1;31mCursos: \033[m
    
    \033[1;33mE = Engenharia   \033[m
    \033[1;34mC = Computação   \033[m 
   \033[1;35m A = Administração \033[m
   
   \033[;1mDe qual curso você participa: '''))
    i=int(input('Digite sua idade: '))
    if curso == 'E' and 'e':
        S1 += 1
    elif curso == 'C' and 'c':
        S2 += 1
    elif curso == 'A' and 'a':
        S3 += 1
    if curso == 'E' and 'e' and i >=20 and i <= 25:
        S4 += 1
    elif curso == 'C' and 'c' and i >= 20 and i <= 25:
        S5 += 1
    elif curso == 'A' and 'a' and i >= 20 and i <= 25:
        S6 += 1
    if curso == 'E' and 'e':
        S7 += 1
        S8 += i
        m1 = S8 / S7
    elif curso == 'C' and 'c':
        S9 += 1
        S10 += i
        m2 = S10 / S9
    elif curso == 'A' and 'a':
        S11 += 1
        S12 += i
        m3 = S12 / S11

print ('\033[;1mO número de alunos nos cursos é de: \n \033[1;33m Engenharia: {} \033[m \n \033[1;34m Computação: {} \033[m \n \033[1;35m Administração: {} \033[m'.format(S1,S2,S3))
print ('\033[;1mO número de alunos com idade entre 20-25 anos: \n \033[1;33m Curso de Engenharia: {} \033[m \n \033[1;34m Curso de Computação: {}\033[m \n \033[1;35m Curso de Administração: {}'.format(S4,S5,S6))
print('\033[;1mA idade média de cada curso é de: \n \033[1;33mEngenharia: {}\033[m\n \033[1;34mComputação: {}\033[m \n \033[1;35mAdministração: {}'.format(m1,m2,m3))


#30 - Foi feita uma pesquisa entre os habitantes de uma região. Foram coletados os dados de idade, sexo (M/F) e salário. Desenvolva um programa que informe:
#a) a média de salário do grupo;
#b) maior e menor idade do grupo;
#c) quantidade de mulheres com salário até R$100,00.
#Encerre a entrada de dados quando for digitada uma idade negativa.
    
qp = qf = qm = mm = ssf = ssm = maiorim = maiorif = menorim = menorif = 0

import sys

pessoas = int(input('Digite a quantia de pessoas que vão participar da pesquisa: '))
for c in range (0,pessoas):
    g = str(input('''Digite seu gênero: 
    m = masculino
    f = feminino
    '''))
    i = int (input('Digite sua idade: '))
    if i < 0:
        print("ERROR!! Saindo do programa...")
        sys.exit()
    s = float(input('Digite seu salário:R$ '))
    if g == 'f' or g == 'F':
        qf = qf + 1
        ssf = ssf + s
        mf = ssf / qf
        menorif = i
        maiorif = i
    if s <= 100:
        qp = qp + 1
    if g == 'm' or g == 'M':
        qm = qm + 1
        ssm = ssm + s
        mm = ssm / qm
        menorim = i
        maiorim = i
    if g == 'f' or g == 'F':
        if i > maiorif:
            maiorif = i
        elif i < menorif:
            menorif = i
    elif g == 'm' or g == 'M': 
        if i > maiorim:
            maiorim = i
        elif i < menorim:
            menorim = i
print(' Média dos salários: \n- Salário feminino: R$',mf,', contendo:',qp,'mulher(es) com salário de até R$100,00 \n- Salário masculino :R$',mm )
print('A maior idade de cada gênero: \n- Masculino:',maiorim,'anos''\n- Feminino:',maiorif,'anos')
print('A menor idade de cada gênero: \n- Feminino:',menorif,'anos''\n- Maculino:',menorim,'anos')


#31 - Num frigorífico existem 90 bois. Cada boi traz em seu pescoço um cartão contendo um número de identificação e seu peso. Escrever um algoritmo e o fluxograma em Pascal que leia o cartão e o peso dos 90 bois e ao final imprima o número e o peso do boi mais gordo e dos bois mais magro.

bm = mb = pm= 0
mp = 10000000000000

for c in range (1,91):
    c=int(input('Digite o cartão: '))
    p=int(input('Digite o peso: '))
    if p > pm:
        pm = p
        bm = c
    if p < mp:
        mp = p
        mb = c
print (' Boi mais gordo: \n- Número:',bm,'\n- Peso:',pm,'kg')
print (' O boi meis magro: \n- Número:',mb,'\n- Peso:',mp,'kg')


#32 - Faça um programa que leia um número inteiro e diga se ele é ou não um número primo.

n = int(input("Digite um número: "))
mult=0

for c in range(1,int (n/2)+1):
    if (n % c == 0):
        print("Múltiplo de",c)
        mult += 1

if(mult==0):
    print("O número digitado: É primo!")
else:
    print('O número digitado: Não é primo!')


#33 - Crie um programa que leia o ano de nascimento de sete pessoas. No final, mostre quantas pessoas ainda não atingiram a maioridade e quantos já são maiores de idade.

maior = menor =0
for cont in range(1,8):
    ano=int(input('Digite o ano em que você nasceu: '))
    i= 2022 - ano
    if i >= 18:
        maior += 1
    if i < 18:
        menor += 1
print('Existem',maior,'pessoas maiores de idade e ',menor,'pessoas menores de idade.')
    
