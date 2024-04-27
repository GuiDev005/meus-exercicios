import time
import os
chances = 3
print('\033[1;34;46m---TELA DE CADASTRO---\033[m')
login_c = str(input('Cadastre seu login: '))
senha_c = str(input('Cadastre sua senha: '))
print('Cadastro validado!')
time.sleep(3)
os.system('cls')
print('\033[1;34;46m---TELA DE LOGIN---\033[m')
login = str(input('Digite seu login: '))
senha = str(input('Digite sua senha: '))
if login == login_c and senha == senha_c:
    print('TELA DE ATENDIMENTO')
    print('1.CADASTRAR PRODUTOS')
    print('2.LISTA DE PRODUTOS')
    print('3.CADASTRAR PROFISSIONAIS')
else:   
        while chances > 0:
            print('SEU LOGIN ESTÁ ERRADO! VOCÊ TEM MAIS {} CHANCES'.format(chances))
            login = str(input('Digite seu login: '))
            senha = str(input('Digite sua senha: '))
            if login != login_c and senha != senha_c:
                chances = chances - 1
                time.sleep(3)
                os.system('cls')
            elif login == login_c and senha == senha_c:
                    chances = -1
                    time.sleep(3)
                    os.system('cls')
        if chances == -1:
            ('SEU LOGIN FOI EFETUADO COM SUCESSO!')
            print('TELA DE ATENDIMENTO')
            print('1.CADASTRAR PRODUTOS')
            print('2.LISTA DE PRODUTOS')
            print('3.CADASTRAR PROFISSIONAIS')
        elif chances == 0:
                     print('SEU LOGIN FOI BLOQUEADO!')