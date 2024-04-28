import time
import os
import random
# 1 - PEDRA/ 2- PAPEL/ 3- TESOURA.
print('Vamos brincar!')
print('Suas opções abaixo:')
print('[1] ENTRAR')
print('[2] SAIR')
escolha_usuario = int(input('Escolha um número acima:'))
time.sleep(1)
os.system('cls')
if escolha_usuario == 1:
    while escolha_usuario == 0 or escolha_usuario == 1 or escolha_usuario == 2 or escolha_usuario == 3:
        escolha_usuario == 0
        escolha_pc = random.randint(1,3)
        print('Vamos brincar!')
        print('Suas opções abaixo:')
        print('[1] PEDRA')
        print('[2] PAPEL')
        print('[3] TESOURA')
        print('[4]PARA ENCERRAR O JOGO!')
        escolha_usuario = int(input('Escolha um número acima:'))
        os.system('cls')
        time.sleep(1)
#VARIAVEIS "pc" e "usuario" para informar a escolha de cada jogador!
        if escolha_pc == 1:
            pc = 'PEDRA'
        elif escolha_pc == 2:
            pc = 'PAPEL'
        elif escolha_pc == 3:
            pc = 'TESOURA'
        if escolha_usuario == 1:
            usuario = 'PEDRA'
        elif escolha_usuario == 2:
            usuario = 'PAPEL'
        elif escolha_usuario == 3:
            usuario = 'TESOURA'
        if escolha_pc ==1 and escolha_usuario == 2:
            vencedor = 'Você venceu!'
            pc = 'PEDRA'
            usuario = 'PAPEL'
        elif escolha_pc == 2 and escolha_usuario == 1:
            vencedor = 'O computador venceu!'
        elif escolha_pc == 1 and escolha_usuario == 3:
            vencedor = 'O computador venceu!'
        elif escolha_pc == 3 and escolha_usuario == 1:
            vencedor = 'Você venceu!'
        elif escolha_pc == 2 and escolha_usuario == 3:
            vencedor = 'Você venceu!'
        elif escolha_pc == 3 and escolha_usuario == 2:
            vencedor = 'O computador venceu!'
        elif escolha_pc == escolha_usuario:
            vencedor = 'EMPATE!'
        elif escolha_usuario != 1 and escolha_usuario != 2 and escolha_usuario != 3 and escolha_usuario != 4:
            print('Número inválido! Tente novamente!')
        if escolha_usuario == 1 or escolha_usuario == 2 or escolha_usuario == 3:
            os.system('cls')
            print('JO')
            time.sleep(1)
            print('KEN')
            time.sleep(1)
            print('PO!')
            time.sleep(1)
            os.system('cls')
            print('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=')
            print('Você escolheu {}'.format(usuario))
            print('O computador escolheu {}'.format(pc))
            print(vencedor)
            print('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=')
            time.sleep(2)
elif escolha_usuario == 2:
    print('Você não iniciou o jogo!')
else:
    print('Número inválido!')
if escolha_usuario == 4:    
    print('Você escolheu sair! Obrigado por jogar!')