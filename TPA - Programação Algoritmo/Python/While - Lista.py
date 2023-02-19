
#34 - Faça um programa que leia o sexo de uma pessoa, mas só aceite os valores 'M' ou 'F'.
#Caso esteja errado, peça a digitação novamente até ter um valor correto.

sexo = str(input('Digite seu sexo: [M/F]: ')).upper()
while sexo not in 'MmFf':
    sexo = str(input('Digite seu sexo: [M/F]: ')).upper()
print ('Sexo {} registrado com sucesso!!!'.format(sexo))

#35 - Crie um programa que leia dois valores e mostre um menu na tela:
#[1] - Somar
#[2] - Multiplicar
#[3] - Subtrair
#[4] - Maior
#[5] - Novos Números
#[6] - Sair do Programa
#Seu programa deverá realizar a operação solicitada em cada caso.
menu = 0
V = int(input('Digite um valor:'))
V1 = int(input('Digite um valor:'))
while menu != 6:
    menu = int(input('''
1 - Somar
2 - Multiplicar
3 - Subtrair
4 - Maior
5 - Novos Números
6 - Sair do Programa
Digite um número: ''')) 
    if menu == 1:
        S = V + V1
        print('resultado:',S)
    elif menu == 2:
        M = V * V1
        print('resultado:',M)
    elif menu == 3:
        SU = V - V1
        print('Resultado:',SU)
    elif menu == 4:
        if V < V1:
            print('O valor',V1,'é maior')
        elif V > V1:
            print('O valor',V,'é maior')
    elif menu == 5:
        V = int(input('Digite um valor:'))
        V1 = int(input('Digite um valor:'))
    elif menu == 6:
        print('Vaza!!!')
    else:
        print('Tente novamente animal')

#36 - Faça um programa que leia um número qualquer e mostre o seu fatorial. Utilize o while para realizar esse exercício.

n = int(input('Digite um número desejado: '))

resultado = cont = 1

while cont <= n:
    resultado *= cont
    cont += 1
    print (resultado)

#37 - Crie um programa que leia vários números inteiros pelo teclado. O programa só vai parar quando o usuário digitar o valor 999, que é a condição de parada. No final, mostre quantos números foram digitados e qual foi a soma entre eles.

s = s1 = s2 = s3 = n = 0

while n != 999:
    n = int(input('Digite algum n�mero inteiro do seu teclado: '))    
    s += n
    s1 = s - 999
    s2 += 1
    s3 = s2 - 1
print('Foram digitados:',s3,' n�meros'', tendo o valor total de:',s1)
if n == 999:
    print('saindo do programa')

#38 - Crie um programa que leia vários números inteiros pelo teclado. No final da execução mostre a média entre todos os valores e qual foi o maior e o menor valores lidos. O programa deve perguntar ao usuário se ele quer ou não continuar a digitar valores.
v = v1 = v2 = v3 = 0
n = int(input('Digite algum número inteiro do seu teclado: '))
d = str(input('Deseja continuar? [S/N]')).upper()

while d != 'Nn':
    if d =='Ss':
        v += 1
        v1 += n
    if d != 'Ss' and d != 'Nn':
        print('Digite novamente')
    if d == 'Nn':
        
    n = int(input('Digite algum número inteiro do seu teclado: '))
    d = str(input('Deseja continuar? [S/N]')).upper()

#39 - Desenvolva um programa que calcule a tabuada de um número qualquer. Utilize o  while para desenvolver esse exercício.
#Ex.
#5 x 1 = 5
#5 x 2 = 10
#5 x 3 = 15
#....
#5 x 10 = 50

n = int(input('Dígite um número: '))
n2 = n3 = 0
while n2 != 10:
    n2 = n2 + 1
    n3 = n * n2
    print('A tabuada de {} é {}x{}={}'.format(n,n,n2,n3))

#40 - Em uma empresa de qualquer, trabalha vários funcionários. Calcule a média de idade de homens e mulheres. Qual a maior idade e qual a menor idade de homens e mulheres. O programa deverá solicitar de deseja continuar ou não a execução do programa.

res = 'S'
h = 0
tm = 0
mih = 0
m = 0
th = 0
mim = 0
meim = meih = 9999999999999999999


while res == 'S':
    s = int(input('''Qual seu sexo?
    1 - Masculino
    2 - Feminino
    R: '''))
    i = int(input('Digite sua idade: '))
    if s == 1:
        h = h + 1
        th = th + i
        if i >= mih:
            mih = i
        if i <= meih:
            meih = i
    elif s == 2:
        m = m + 1
        tm = tm + i
        if i >= mim:
            mim = i
        if i <= meim:
            meim = i
    res = str(input('Deseja continuar? [S/N] -> ')).upper()

mh = th / h
mm = tm / m

#41 - Desenvolva um programa que calcule o vencedor de uma eleição de uma cidade.
#Candidatos:
#10 - Pernalonga
#30 - Frajola
#42 - Taz
#55 - Patolino
#01 - Branco
#00 - Sair da Eleição
#Sabendo que qualquer número diferente desse, é voto nulo.
#Qual candidato venceu a eleição?
#O candidato que teve mais votos, ganhou com quantos?
#Qual a média de votos de cada candidato?
#Qual a porcentagem de votos de cada candidato?

v = 1
sp = qp = st = sf = qt = qf = 0
spa = qpa = sb = qb = snu = qnu = 0

while v != 0:
    print('---Candidatos---')
    print('10 - Pernalonga')
    print('30 - Frajola')
    print('42 - Taz')
    print('55 - Patolino')
    print('1 - Branco')
    print('0 - Sair da Eleição')
    print('Diferente desses números o voto é nulo!')
    print('---------------------------------------------')
    v = int(input('Digite o número do seu candidato: '))
    print('---------------------------------------------------------------------')
    if v == 10:
        sp = sp + v
        qp = qp + 1
    elif v == 30:
        sf = sf + v
        qf = qf + 1
    elif v == 42:
        st = st + v
        qt = qt + 1
    elif v == 55:
        spa = spa + v
        qpa = qpa + 1
    elif v == 1:
        sb = sb + v
        qb = qb + 1
    else:
        snu = snu + v
        qnu = qnu + 1

mp = sp / qp
mf = sf / qf
mt = st / qt
mpa = spa / qpa
mb = sb / qb
mnu = snu / qnu

porcP = (100 * qp) / mp
porcF = (100 * qf) / mf
porcT = (100 * qt) / mt
porcPA = (100 * qpa) / mpa
porcB = (100 * qb) / mb
porcNU = (100 * qnu) / mnu

if qp > qf and qp > qt and qp > qpa and qp > qb and qp > qnu:
    print('O candidato vencedor é o Pernalonga com {} votos.'.format(qp))

elif qf > qp and qf > qt and qf > qpa and qf > qb and qf > qnu:
    print('O candidato vencedor é o Frajola com {} votos.'.format(qf))

elif qt > qp and qt > qf and qt > qpa and qt > qb and qt > qnu:
    print('O candidato vencedor é o Taz com {} votos.'.format(qt))


elif qpa > qp and qpa > qf and qpa > qt and qpa > qb and qpa > qnu:
    print('O candidato vencedor é o Patolino com {} votos.'.format(qpa))

elif qb > qp and qb > qf and qb > qt and qb > qpa and qb > qnu:
    print('O candidato vencedor é o Branco com {} votos.'.format(qb))
else:
    print('O vencedor foi o voto nulo com {} votos.'.format(qnu))

print('MÉDIAS: Pernalonga - {}; Frajola - {}; Taz - {}; Patolino - {}; Branco - {}; Nulo - {}'.format(mp, mf, mt, mpa, mb, mnu))
print('PORCENTAGEM: Pernalonga - {}%; Frajola - {}%; Taz - {}%; Patolino - {}%; Branco - {}%; Nulo - {}%'.format(porcP, porcF, porcT, porcPA, porcB, porcNU))

#42 - Desenvolva  um programa que calcule a quantidade de homens e mulheres de uma empresa .
#Diante deisso calcule:
#A quantidade de homens e mulhere desta empresa.
#A média de homens e mulheres que trabalham nesta empresa.

sf = qf = sm = qm = 0
res = 'F' or 'M'
res2 = 'S'
while res == 'F' or res == 'M' and res2 == 'S':
    res = str(input('Digite seu sexo [F/M]:  ')).upper()
    if res == 'F':
        sf = sf + 1
        qf = qf + 1
    elif res == 'M':
        sm = sm + 1
        qm = qm + 1
    res2 = str(input('Deseja continuar? [S/N] ->  ')).upper()

mf = sf / qf
mm = sm / qm

print('Na empresa trabalham {} mulhere(s) e {} homem(s).'.format(qf, qm))
print('A média é {} de mulheres na empresa. A média é {} de homens na empresa.'.format(mf, mm))

#43 - Desenvolva um programa que calcule o peso e a idade de várias pessoas na cidade.
#Sabendo disso mostre:
#Maior Peso
#Menor Peso
#Média das idades.

res = 'S'
men = 9999
mai = s = q = 0

while res == 'S':
    pe = float(input('Digite seu peso: '))
    ida = int(input('Digite sua idade: '))
    res = str(input('Deseja continuar? [S/N] ->  ')).upper()
    s = s + ida
    q = q + 1

    if pe < men:
        men = pe
    else:
        mai = pe

m = s / q

print('O maior peso é de {} anos e o menor peso é {} anos.'.format(mai, men))
print('A média das idades é de {}.'.format(m))

#44 - Desenvolva um programa que calcule a quantidade de pessoas que compraram ingresso para uma sessão de
#cinema. Sabendo que:

#Sala 1 - Thor: Amor e Trovão
#Sala 2 - Avengers
#Sala 3 - O outro Eu
#Sala 4 - Minions 2

#Diferente disso, o programa deverá sair.
#Com essas informações calcule a quantidade de pessoas que irão assistir aos filmes em cada sala.
#Media GERAL de pessoas que frequentaram o cinema naquele momento.
#Porcentagem de pessoas em cada sala.

quan1 = quan2 = quan3 = quan4 = 0
sala = 1234

print('Sala 1 - Thor: Amor e trovão. ')
print('Sala 2 - Avengers.')
print('Sala 3 - O outro eu.')
print('Sala 4 - Minios 2.')
print('Inicie o programa digitando 1! ')
print('--------------------------------------------------------------')
sala = int(input('Digite qualquer número acima para iniciar: '))
while sala == 1 or sala == 2 or sala == 3 or sala == 4:
    print('--------------------------------------------------------------')
    print('Sala 1 - Thor: Amor e trovão. ')
    print('Sala 2 - Avengers.')
    print('Sala 3 - O outro eu.')
    print('Sala 4 - Minios 2.')
    print('Encerre o programa digitando 9! ')
    print('--------------------------------------------------------------')
    sala = int(input('Digite a sala: '))
    if sala == 1:
        quan1 = quan1 + 1
    elif sala == 2:
        quan2 = quan2 + 1
    elif sala == 3:
        quan3 = quan3 + 1
    elif sala == 4:
        quan4 = quan4 + 1

mg = quan1 + quan2 + quan3 + quan4
por1 = (100 * quan1) / mg
por2 = (100 * quan2) / mg
por3 = (100 * quan3) / mg
por4 = (100 * quan4) / mg

print('Quantidade de pessoas que assistiram aos filmes: Sala 1 - {} pessoas; Sala 2 - {} pessoas; Sala 3 - {} pessoas; Sala 4 - {} pessoas.'.format(quan1, quan2, quan3, quan4))
print('A média geral é {}'.format(mg))
print('A porcentagem: Sala 1 - {}%; Sala 2 - {}%; Sala 3 - {}%; Sala 4 - {}%.'.format(por1, por2, por3, por4))