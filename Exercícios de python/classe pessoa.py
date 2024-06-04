class Pessoa:
    def __init__(self, nome, idade, peso, altura):
        self.nome = nome
        self.idade = idade
        self.peso = peso
        self.altura = altura
    
    def envelhecer(self, nova_idade):
        self.crescer(nova_idade)
        self.idade = nova_idade

    def engordar(self):
        novo_peso = float(input(f'O usuário engordou e, atualmente, está com {self.peso}, digite o novo peso do mesmo: '))

        if novo_peso > self.peso:
            self.peso = novo_peso

        else:
            print('Você disse que o indivíduo engordou, mas definiu um peso abaixo do anterior.')
    
    def emagrecer(self):
        novo_peso = float(input(f'O usuário emagreceu e, atualmente, está com {self.peso}, digite o novo peso do mesmo: '))

        if novo_peso < self.peso:
            self.peso = novo_peso

        else:
            print('Você disse que o indivíduo emagreceu, mas definiu um peso acima do anterior.')

    def crescer(self, nova_idade):
        if self.idade < 21:
            if nova_idade > 21:
                conta_idade = 21 - self.idade
            else:
                conta_idade = nova_idade - self.idade
            self.altura += 0.005 * conta_idade
            

print('Digite as informações do usuário indivíduo:')
nome_usuario = input('Digite o nome do indivíduo: ')
idade_usuario = int(input('Digite a idade do indivíduo: '))
peso_usuario = float(input('Digite o peso do indivíduo, em KG: '))
altura_usuario = float(input('Digite a altura do indivíduo em metros: '))
pessoa1 = Pessoa(nome = nome_usuario, idade = idade_usuario, peso = peso_usuario, altura = altura_usuario)

while True:
    print('''TELA DE OPÇÕES:
        [1]O INDIVÍDUO ENVELHECEU
        [2]O INDIVÍDUO ENGORDOU
        [3]O INDIVÍDUO EMAGRECEU
        [4]FECHAR ALTERAÇÕES
        ''')
    opcao = int(input('Digite sua opção:'))

    match opcao:

        case 1:
            nova_idade = int(input(f'Atualmente, o indivíduo está com {pessoa1.idade}. Qual a nova idade do mesmo?'))
            if nova_idade > pessoa1.idade:
                pessoa1.envelhecer(nova_idade)
            else:
                print('A idade selecionada é inferior a atual.')
        case 2:
            pessoa1.engordar()
        case 3:
            pessoa1.emagrecer()
        case 4:
            break

print(f'''TABELA DE DADOS:
      NOME:{pessoa1.nome} 
      IDADE:{pessoa1.idade} ANOS
      PESO:{pessoa1.peso} KG
      ALTURA:{pessoa1.altura} METROS
      ''')

    