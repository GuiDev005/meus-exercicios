Algoritmo "Sistema_de_Posto"

// Alunos: Guilherme Eduardo Ara�jo da Silva
// Luicleide de Ara�jo
// Turma: 1� MOD - DS

// �REA DE PROCEDIMENTOS E FUN��ES

procedimento Cadastro_funcionario()

var

inicio

   escreval("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")
   escreval("&&&&&  $$$$$     $$$    $$$$        $$$      $$$$$$   $$$$$$$$   $$$$$$       $$$$    &&&&&")
   escreval("&&&&& $$   $$   $$ $$   $$  $$     $$ $$    $$    $$     $$      $$   $$    $$    $$  &&&&&")
   escreval("&&&&& $$       $$   $$  $$   $$   $$   $$    $$          $$      $$   $$   $$      $$ &&&&&")
   escreval("&&&&& $$       $$$$$$$  $$    $   $$$$$$$      $$        $$      $$$$$$    $        $ &&&&&")
   escreval("&&&&& $$       $$   $$  $$   $$   $$   $$       $$       $$      $$   $$   $$      $$ &&&&&")
   escreval("&&&&& $$   $$  $$   $$  $$  $$    $$   $$   $$    $$     $$      $$    $$   $$    $$  &&&&&")
   escreval("&&&&&  $$$$$   $$   $$  $$$$      $$   $$    $$$$$$      $$      $$     $$    $$$$    &&&&&")
   escreval("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")
   escreval(" ")
   escreval(" ")
   escreval("CADASTRE O SEU LOGIN:")
   leia(login_funcionario[vetor_cadastro])
   escreval("CADASTRE A SUA SENHA:")
   leia(senha_funcionario[vetor_cadastro])

   vetor_cadastro <- vetor_cadastro + 1

   limpatela

fimprocedimento



procedimento logar_funcionario()

var

inicio

   escreval("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")
   escreval("&&&&&  $$        $$$$         $$$$$$  $$$$$$  $$$     $$  &&&&&")
   escreval("&&&&&  $$      $$    $$     $$      $   $$    $$$$    $$  &&&&&")
   escreval("&&&&&  $$     $$      $$   $$           $$    $$ $$   $$  &&&&&")
   escreval("&&&&&  $$     $        $   $    $$$$$   $$    $$  $$  $$  &&&&&")
   escreval("&&&&&  $$     $$      $$   $$      $$   $$    $$   $$ $$  &&&&&")
   escreval("&&&&&  $$      $$    $$     $$    $$    $$    $$    $$$$  &&&&&")
   escreval("&&&&&  $$$$$$$   $$$$         $$$$    $$$$$$  $$     $$$  &&&&&")
   escreval("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")
   escreval("")
   escreval("")
   escreval("DIGITE O SEU LOGIN:")
   leia(login)
   escreval("DIGITE A SUA SENHA:")
   leia(senha)
   limpatela

   para verifica_cadastro de 1 ate vetor_cadastro faca

      se (login = login_funcionario[verifica_cadastro]) e (senha = senha_funcionario[verifica_cadastro]) e (login <> "") e (senha <> "") entao

         valida_login <- Verdadeiro

         interrompa

      fimse

   fimpara

fimprocedimento



procedimento inserir_cpf()

var

inicio

   escreval("Digite o CPF do cliente:")
   leia(cpf_venda[cont_vetor_venda])

fimprocedimento



procedimento separa_linha()

var

inicio

   escreval("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------")

fimprocedimento



Var
   // Variaveis de tela de carregamento.

   j,k, i: inteiro

   // Vari�veis de cadastro e login.

   login, senha: caractere
   login_funcionario, senha_funcionario: vetor[1..100] de caractere
   tentativa, vetor_cadastro, verifica_cadastro, opcao_funcionario, voltar_funcionario: inteiro
   valida_login: logico

   //Operadores l�gicos.

   encontrar_produtos: logico
   verificar_quantidade: logico

   //Vari�rel contadoras.

   cont: inteiro

   //Vari�veis do comando escolha.

   opcao, opcao_cadastro, opcao_cadastro_cliente, opcao_cadastro_produto, opcao_relatorio, opcao_vender_produto, opcao_comfirmar_venda, opcao_inserir_cad: inteiro

   //Vari�veis da parte de cadastro, tanto de produtos, tanto de clientes.

   cad_cliente, codigo_produto, quant_prod: vetor [1..100] de inteiro
   nome_cliente, nome_produto, cpf, tel_cliente, rg, validade, data_fabricacao: vetor[1..100] de caractere
   preco: vetor [1..100] de real

   // Altera��o de registros

   repor_produto, quantidade_reposicao, alterar_preco: inteiro

   //Vari�veis para parte de vendas.

   metodo_pagamento, status: vetor[1..100] de caractere
   quant_venda_prod, cod_prod_venda, cad_cliente_venda, cpf_venda: vetor[1..100] de inteiro

   //vari�veis conta vetor.

   contador_cliente, cont_vetor_cliente, cont_vetor_produto, cont_vetor_venda, contador_produto, localizar_produto: inteiro

   //Vari�veis de procurar estoque e relat�rio de venda.

   estoque, localiza_nome_produto, localiza_cliente, contador_venda: inteiro



Inicio

   // Incializa��o de vari�veis
   cont_vetor_cliente <- 1
   cont_vetor_produto <- 1
   cont_vetor_venda <- 1
   contador_cliente <- 1
   contador_produto <- 1
   codigo_produto[cont_vetor_produto] <- 1
   cad_cliente[cont_vetor_cliente] <- 1
   vetor_cadastro <- 1
   tentativa <- 1

   repita

      repita

         // Tela de criar cadastro e login
         opcao_funcionario <- 0
         valida_login <- falso
         escreval("SELECIONE SUA OP��O:")
         escreval("[1] CADASTRAR FUNCION�RIO.")
         escreval("[2] ENTRAR NO SISTEMA.")
         escreval("[3] FECHAR SISTEMA.")
         escreva("SUA OP��O: ")
         leia(opcao_funcionario)
         escolha opcao_funcionario

         caso 1

            cadastro_funcionario()

         caso 2

            logar_funcionario()

            se (valida_login = falso) entao

               repita

                  escreval("VOC� DIGITOU LOGIN OU SENHA INCORRETO! VOC� EST� NA ", tentativa, "� DE 3 TENTATIVAS")
                  valida_login <- falso
                  escreval("[1] PARA CONTINUAR")
                  escreval("[2] PARA VOLTAR")
                  leia(voltar_funcionario)
                  se voltar_funcionario = 1 entao

                     logar_funcionario()

                  fimse

                  se valida_login = falso entao

                     tentativa <- tentativa + 1

                  fimse

               ate (tentativa > 3) ou (valida_login = verdadeiro) ou (voltar_funcionario = 2)

               se tentativa > 3 entao

                  escreva ("O SISTEMA FOI BLOQUEADO!")

               fimse

            fimse

         caso 3

            escreva("VOC� SAIU DO SISTEMA!")

            interrompa

         outrocaso

            escreval("OP��O INV�LIDA")

         fimescolha

         opcao_funcionario <- 0

      ate (valida_login = verdadeiro) ou (opcao_funcionario = 3)ou (tentativa > 3)

      se valida_login = verdadeiro entao

         // Tela de acesso ao sistema
         escreval ("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")
         escreval ("&&&&&   $$$$$$$     $$$$$$$$   $$      $$          $$     $$              $$$$$$$      $$$$$$$    &&&&&")
         escreval ("&&&&& $$$     $$$      $$      $$       $$        $$     $$$$             $     $$   $$$     $$$  &&&&&")
         escreval ("&&&&&   $$$            $$      $$        $$      $$     $$  $$            $$    $$     $$$        &&&&&")
         escreval ("&&&&&     $$$          $$      $$         $$    $$     $$    $$           $$$$$$$        $$$      &&&&&")
         escreval ("&&&&&       $$$        $$      $$          $$  $$     $$$$$$$$$$          $$               $$$    &&&&&")
         escreval ("&&&&& $$$     $$$      $$      $$           $$$$     $$        $$   $$$$  $$         $$$     $$$  &&&&&")
         escreval ("&&&&&   $$$$$$$     $$$$$$$$   $$$$$$$$$     $$     $$          $$  $$$$  $$           $$$$$$$    &&&&&")
         escreval ("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")
         escreva("ENTRANDO")
         valida_login <- falso
         tentativa <- 1
         opcao_funcionario <- 0

         para i de 1 ate 4 faca

            escreva(".")

            para j de 1 ate 1000 faca

               para k de 1 ate 100 faca

               fimpara

            fimpara

         fimpara

         limpatela

         repita

            // Tela inicial do programa
            escreval("TELA INICIAL:")
            escreval()
            escreval("SELECIONE ALGUMA DAS OP��ES ABAIXO:")
            escreval("1. CADASTRO(CLIENTE/PRODUTO) E ALTERA��ES DE REGISTRO.")
            escreval("2. VENDER.")
            escreval("3. RELAT�RIOS.")
            escreval("4. SAIR")
            escreva("SUA OP��O: ")
            leia(opcao)
            limpatela
            escolha (opcao)

            caso 1

               repita

                  // Tela para registrar clientes, produtos e alterar os registros de produtos
                  escreval("ESCOLHA UMA OP��O:")
                  escreval()
                  escreval("1. CADASTRAR CLIENTE.")
                  escreval("2. CADASTRAR PRODUTOS.")
                  escreval("3. ALTERAR REGISTROS DE PRODUTOS.")
                  escreval("4. PARA VOLTAR.")
                  escreva("SUA OP��O: ")
                  leia(opcao_cadastro)

                  limpatela

                  escolha opcao_cadastro

                  caso 1

                     limpatela

                     se cont_vetor_cliente = 101 entao

                        // Caso chege ao n�mero m�ximo de registros, ser� impresso essa mensagem
                        escreval("VOC� ALCAN�OU O N�MERO M�XIMO DE CLIENTES!")
                        escreval("DIGITE 2 PARA VOLTAR.")
                        leia(opcao_cadastro_cliente)

                        se opcao_cadastro_cliente <> 2 entao

                           repita

                              escreval("VOC� INSERIU UM N�MERO INV�LIDO,DIGITE 2 PARA VOLTAR.")

                              leia(opcao_cadastro_cliente)

                           ate opcao_cadastro_cliente = 2

                        fimse

                     senao

                        repita

                           // Cadastrar clientes
                           escreval("CADASTRO DE CLIENTE:")
                           escreval("AQUI VOC� PODE CADASTRAR CLIENTES. VOC� EST� CADASTRANDO SEU ",cont_vetor_cliente, "� PRODUTO")
                           escreval()
                           escreval("Digite o nome completo do cliente:")
                           leia(nome_cliente[cont_vetor_cliente])
                           escreval()
                           escreval("Digite o CPF do cliente:")
                           leia(cpf[cont_vetor_cliente])
                           escreval()
                           escreval("Digite o n�mero de telefone do cliente:")
                           leia(tel_cliente[cont_vetor_cliente])
                           escreval()
                           escreval("Digite o RG do cliente:")
                           leia(rg[cont_vetor_cliente])
                           escreval()
                           escreval("O N�MERO DE CADASTRO DO SEU CLIENTE �: ",cad_cliente[cont_vetor_cliente])
                           escreva("DIGITE [1] PARA CONTINUAR E [2] PARA VOLTAR: ")
                           leia(opcao_cadastro_cliente)
                           cont_vetor_cliente <- cont_vetor_cliente + 1
                           cad_cliente[cont_vetor_cliente] <- cad_cliente[cont_vetor_cliente] + cont_vetor_cliente

                        ate (opcao_cadastro_cliente = 2)ou (cont_vetor_cliente = 101)

                     fimse

                  caso 2

                     limpatela
                     se cont_vetor_produto = 101 entao

                        // Caso chege ao n�mero m�ximo de registros, ser� impresso essa mensagem
                        escreval("VOC� ALCAN�OU O N�MERO M�XIMO DE PRODUTOS!")
                        escreval("DIGITE 2 PARA VOLTAR.")
                        leia(opcao_cadastro_produto)

                        se opcao_cadastro_produto <> 2 entao

                           repita

                              escreval("VOC� INSERIU UM N�MERO INV�LIDO,DIGITE 2 PARA VOLTAR.")
                              leia(opcao_cadastro_produto)

                           ate  opcao_cadastro_produto = 2

                        fimse

                     senao

                        repita

                           // Cadastrar produtos
                           escreval("CADASTRAR DE PRODUTO:")
                           escreval("AQUI VOC� PODE CADASTRAR SEUS PRODUTOS. VOC� EST� CADASTRANDO SEU ",cont_vetor_produto, "� PRODUTO")
                           escreval()
                           escreval("Digite o nome do produto:")
                           leia(nome_produto[cont_vetor_produto])
                           escreval()
                           escreval("Digite a data de fabrica��o: ")
                           leia(data_fabricacao[cont_vetor_produto])
                           escreval()
                           escreval("Data de validade: ")
                           leia(validade[cont_vetor_produto])
                           escreval()
                           escreval("Digite o pre�o, por unidade, do produto: ")
                           leia(preco[cont_vetor_produto])
                           escreval()
                           escreval("Digite a quantidade de produto: ")
                           leia(quant_prod[cont_vetor_produto])
                           escreval()
                           escreval("O c�digo do produto �: ", codigo_produto[cont_vetor_produto])
                           cont_vetor_produto <- cont_vetor_produto + 1
                           codigo_produto[cont_vetor_produto] <- codigo_produto[cont_vetor_produto] + cont_vetor_produto
                           escreval("Digite [1] para continuar e [2] para voltar. ")

                           leia(opcao_cadastro_produto)

                        ate (opcao_cadastro_produto = 2) ou (cont_vetor_produto = 101)

                     fimse

                  caso 3

                     limpatela

                     repor_produto <- 0
                     quantidade_reposicao <- 0

                     // Alterar registros
                     escreval("ALTERA��O DE REGISTRO:")
                     escreval()
                     escreval("Digite o c�digo do produto que deseja repor:")
                     leia(repor_produto)

                     se repor_produto >= cont_vetor_produto entao

                        escreva("O PRODUTO N�O FOI ENCONTRADO!")

                     senao
                        escreval()
                        separa_linha()
                        escreval("|NOME: ", nome_produto[repor_produto],"  |QUANTIDADE: ", quant_prod[repor_produto], "  |PRE�O: ", preco[repor_produto])
                        separa_linha()
                        escreval()
                        escreval("Deseja alterar o pre�o?")
                        escreval("[1] SIM E [2] N�O")
                        escreva("SUA OP��O: ")
                        leia(alterar_preco)

                        se alterar_preco = 1 entao

                           escreval("Digite o novo pre�o: ")
                           leia(preco[repor_produto])

                        fimse

                        escreval("Digite a quantidade que deseja adicionar: ")
                        leia(quantidade_reposicao)
                        escreval("FABRICA��O: ", data_fabricacao[repor_produto], " |  Digite a nova data de fabrica��o:")
                        leia(data_fabricacao[repor_produto])
                        escreval("VALIDADE: ", validade[repor_produto], " |  Digite a nova data de validade: ")
                        leia(validade[repor_produto])

                        quant_prod[repor_produto] <- quant_prod[repor_produto] + quantidade_reposicao

                     fimse

                  caso 4

                     opcao_cadastro <- 4

                  outrocaso

                     escreval("OP��O INV�LIDA!")

                  fimescolha

               ate opcao_cadastro = 4

            caso 2

               limpatela

               repita

                  estoque <- 1
                  opcao_vender_produto <- 1
                  encontrar_produtos <- falso
                  verificar_quantidade <- falso

                  // Parte de vender produtos
                  escreval("VENDA DE PRODUTOS:")
                  escreval()
                  escreval("Digite o c�digo do produto:")
                  leia(cod_prod_venda[cont_vetor_venda])
                  localizar_produto <- cod_prod_venda[cont_vetor_venda]

                  para estoque de 1 ate cont_vetor_produto faca

                     se codigo_produto[estoque] = cod_prod_venda[cont_vetor_venda] entao

                        encontrar_produtos <- verdadeiro

                     fimse

                  fimpara

                  se encontrar_produtos = verdadeiro entao

                     escreval()
                     separa_linha()
                     escreval("|NOME DE PRODUTO: ", nome_produto[localizar_produto],"  |PRE�O: ", preco[localizar_produto] ,"  |QUANTIDADE: ", quant_prod[localizar_produto], "  |FABRICA��O: ", data_fabricacao[localizar_produto], "  |VALIDADE: ", validade[localizar_produto])
                     separa_linha()
                     escreval()
                     escreval("Digite a quantidade de produtos:")
                     leia(quant_venda_prod[cont_vetor_venda])

                     se quant_prod[localizar_produto] >= quant_venda_prod[cont_vetor_venda] entao

                        verificar_quantidade <- verdadeiro

                     fimse

                     se verificar_quantidade = verdadeiro entao

                        escreval("Deseja inserir n�mero de cadastro do cliente?")
                        escreval("[1] SIM   E    [2] N�O ")
                        escreva("SUA OP��O: ")
                        leia(opcao_inserir_cad)

                        se opcao_inserir_cad = 1 ent�o

                           escreval("Digite o casdastro de seu cliente: ")
                           leia(cad_cliente_venda[cont_vetor_venda])
                           se cad_cliente_venda[cont_vetor_venda] >= cont_vetor_cliente entao

                              inserir_cpf()
                              cad_cliente_venda[cont_vetor_venda] <- 0

                           fimse

                        senao

                           inserir_cpf()
                           cad_cliente_venda[cont_vetor_venda] <- 0

                        fimse

                        escreval("O VALOR FINAL FOI, EM R$:", quant_venda_prod[cont_vetor_venda] * preco[localizar_produto])
                        escreval()
                        escreval("M�todo de pagamento(cr�dito, d�bito, pix ou dinheiro): ")
                        leia(metodo_pagamento[cont_vetor_venda])
                        escreval()
                        escreval("Deseja comfirmar a compra, [1] SIM ou [2] N�O:")
                        escreva("SUA OP��O: ")
                        leia(opcao_comfirmar_venda)
                        escreval()

                        se opcao_comfirmar_venda = 1 entao

                           escreval("COMPRA COMFIRMADA COM SUCESSO!")
                           status[cont_vetor_venda] <- "APROVADO!"
                           quant_prod[localizar_produto] <- quant_prod[localizar_produto] - quant_venda_prod[cont_vetor_venda]
                           cont_vetor_venda <- cont_vetor_venda + 1
                           escreval("Digite [1] para realizar uma nova compra ou [2] para voltar: ")
                           escreva("SUA OP��O: ")
                           leia(opcao_vender_produto)

                        senao

                           escreval("COMPRA N�O REALIZADA")
                           status[cont_vetor_venda] <- "CANCELADO!"
                           escreval("Digite [1] para realizar uma nova compra ou [2] para voltar: ")
                           leia(opcao_vender_produto)

                        fimse

                     senao

                        escreval("A QUANTIDADE DE PRODUTO REQUERIDA � MAIOR QUE A DO ESTOQUE.")
                        escreval("Digite [1] para realizar uma nova compra ou [2] para voltar: ")
                        escreva("SUA OP��O: ")
                        leia(opcao_vender_produto)

                     fimse

                  senao

                     escreval("PRODUTO N�O ENCONTRADO NO ESTOQUE.")
                     escreval("Digite [1] para realizar uma nova compra ou [2] para voltar: ")
                     escreva("SUA OP��O: ")
                     leia(opcao_vender_produto)

                  fimse

               ate opcao_vender_produto = 2

            caso 3

               // Parte de relat�rios
               limpatela
               escreval("RELAT�RIOS:")
               escreval()
               escreval("1. TABELA DE CLIENTES")
               escreval("2. TABELA DE PRODUTOS")
               escreval("3. TABELA DE VENDAS")
               escreva("SUA OP��O: ")
               leia(opcao_relatorio)

               escolha opcao_relatorio

               caso 1

                  escreval("TABELA DE CLIENTES CADASTRADOS:")
                  escreval()

                  para contador_cliente de 1 ate cont_vetor_cliente faca

                     escreval()
                     separa_linha()
                     escreval("|NOME COMPLETO: ", nome_cliente[contador_cliente], "  |CPF: ", cpf[contador_cliente], "  |TELEFONE: ", tel_cliente[contador_cliente], "  |RG: ", rg[contador_cliente], "  |CADASTRO CLIENTE: ", cad_cliente[contador_cliente])
                     separa_linha()
                     escreval()

                  fimPara

               caso 2

                  escreval("TABELA DE PRODUTOS CADASTRADOS:")
                  escreval()

                  para contador_produto de 1 ate cont_vetor_produto faca

                     escreval()
                     separa_linha()
                     escreval("|NOME PRODUTO: ", nome_produto[contador_produto], "  |QUANTIDADE: ", quant_prod[contador_produto], "  |CODIGO DE PRODUTO: ", codigo_produto[contador_produto], "  |DATA DE FABRICA��O: ", data_fabricacao[contador_produto], "  |VALIDADE: ", validade[contador_produto])
                     separa_linha()
                     escreval()

                  fimPara

               caso 3

                  escreval("REGISTROS DE COMPRAS:")
                  escreval()

                  cont_vetor_venda <- cont_vetor_venda - 1


                  para contador_venda de 1 ate cont_vetor_venda faca


                     localiza_cliente <- cad_cliente_venda[contador_venda]
                     localiza_nome_produto <- cod_prod_venda[contador_venda]

                     se localiza_cliente = 0 entao

                        escreval()
                        separa_linha()
                        escreval("|C�DIGO DO PRODUTO: ", cod_prod_venda[contador_venda],"  |NOME DO PRODUTO: ", nome_produto[localiza_nome_produto], "  |QUANTIDADE VENDIDA: ", quant_venda_prod[contador_venda], "  |NOME DO CLIENTE: VAZIO", "  |CPF: ", cpf_venda[contador_venda] , "  |M�TODO DE PAGAMENTO: ", metodo_pagamento[contador_venda], "  |STATUS: ", status[contador_venda])
                        separa_linha()

                     senao

                        escreval()
                        separa_linha()
                        escreval("|C�DIGO DO PRODUTO: ", cod_prod_venda[contador_venda],"  |NOME DO PRODUTO: ", nome_produto[localiza_nome_produto], "  |QUANTIDADE VENDIDA: ", quant_venda_prod[contador_venda], "  |NOME DO CLIENTE: ", nome_cliente[localiza_cliente], "  |CPF: " , cpf[localiza_cliente] , "  |M�TODO DE PAGAMENTO: ", metodo_pagamento[contador_venda], "  |STATUS: ", status[contador_venda])
                        separa_linha()

                     fimse

                  fimpara

                  cont_vetor_venda <- cont_vetor_venda +1

               fimescolha


            fimescolha


         ate opcao = 4

      fimse

   ate opcao_funcionario = 3

Fimalgoritmo