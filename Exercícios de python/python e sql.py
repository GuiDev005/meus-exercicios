# Alunos: Guilherme Eduardo Araújo da Silva / Lucicleide de Araújo da Silva 1° Mod - DS
import pymysql as MySQLdb

conexao = MySQLdb.connect (host = 'localhost',
                          user = '*****', # inserir seu usuário
                          passwd = '*******') # inseir sua senha
                          

# A partir da criação desse cursor, podemos executar comandos do SQL

cursor = conexao.cursor()

# Criação do banco de dados 

nome_do_banco = 'conectando_Python_com_MySQL'
cursor.execute('CREATE DATABASE IF NOT EXISTS {}'.format(nome_do_banco))

cursor.execute('USE {}'.format(nome_do_banco))

# Criando tabela
cursor.execute ('''
                CREATE TABLE IF NOT EXISTS DADOS_PESSOAIS_PYTHON(
                id INT AUTO_INCREMENT PRIMARY KEY,
                nome VARCHAR(35),
                cpf VARCHAR(14),
                data_nascimento DATE,
                email VARCHAR(50),
                numero_telefone VARCHAR(20)
                )

''')
inserir_dados = '''
                INSERT INTO DADOS_PESSOAIS_PYTHON (nome, cpf, data_nascimento, email, numero_telefone)
                VALUES (%s, %s, %s, %s, %s)

                '''
dados = ('Guilherme', '123.456.789-00', '1990-01-01', 'fulano@example.com', '123456789')

cursor.execute(inserir_dados, dados)

# Encerrar a conexão
cursor.close()
conexao.close()