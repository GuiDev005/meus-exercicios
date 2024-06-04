class bola:
    def __init__(self, cor, circunferencia, material):
        self.cor = cor
        self.circunferencia = circunferencia
        self.material = material
    
    def mostrar_cor(self):
        print(self.cor)
    
    def trocar_cor(self):
        cor_usuario = input(f'A cor atual da bola é {self.cor}, deseja trocar para qual outra cor? ')
        self.cor = cor_usuario
cor_usuario = input('Digite a cor da bola: ')
circunferencia_usuario = input('Digite a circunferencia da bola: ')
material_usuario = input('Digite o material da bola: ')

bola1 = bola(cor = cor_usuario, circunferencia = circunferencia_usuario, material = material_usuario)

while True:
    print(bola1.cor, bola1.circunferencia, bola1.material)
    opcao = input('Deseja trocar a cor da bola? Digite "SIM" ou "NÃO" para trocar: ')
    opcao = opcao.upper().strip()
    if opcao == 'SIM':
        print(f'A cor da bola é: {bola1.cor}')
        bola1.trocar_cor()
        break
    elif opcao == 'NÃO':
        print('Nada foi alterado então a bola está registrada assim: ')
        print(bola1.cor, bola1.circunferencia, bola1.material)
        break
    else:
        print('Você digitou algo não esperado, tente uma resposta válida.')

print(f'A bola está registrada da seguinte forma: cor = {bola1.cor}, circunferência = {bola1.circunferencia} e material = {bola1.material}')
