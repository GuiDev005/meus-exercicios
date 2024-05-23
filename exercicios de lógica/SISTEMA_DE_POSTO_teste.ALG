Algoritmo "Sistema_de_Posto"
//Alunos: Guilherme Eduardo
// Luicleide de Araújo
// Turma: 1° MOD - DS
Var
   //Operadores lógicos
   encontrar_produtos: logico
   verificar_quantidade: logico

   //Variárel contadoras

   cont: inteiro

   //Variáveis do comando escolha

   opcao, opcao_cadastro, opcao_cadastro_cliente, opcao_cadastro_produto, opcao_relatorio, opcao_vender_produto, opcao_comfirmar_venda, opcao_inserir_cad: inteiro

   //Variáveis da parte de cadastro, tanto de produtos, tanto de clientes

   cad_cliente, codigo_produto, quant_prod: vetor [1..100] de inteiro
   nome_cliente, nome_produto, cpf, tel_cliente, rg, validade, data_fabricacao: vetor[1..100] de caractere
   preco: vetor [1..100] de real

   //Variáveis para parte de vendas

   nome_venda_prod, metodo_pagamento, status: vetor[1..100] de caractere
   quant_venda_prod, cod_prod_venda, cad_cliente_venda: vetor[1..100] de inteiro

   //variáveis conta vetor

   contador_cliente,cont_vetor_cliente, cont_vetor_produto, cont_vetor_venda, contador_produto, localizar_produto: inteiro

   //Variáveis de procurar estoque
   estoque: inteiro

Inicio
   cont_vetor_cliente <- 1
   cont_vetor_produto <- 1
   cont_vetor_venda <- 1
   contador_cliente <- 1
   contador_produto <- 1
   codigo_produto[cont_vetor_produto] <- 1
   cad_cliente[cont_vetor_cliente] <- 1
   repita

      escreval("*********************************")
      escreval("****BEM-VINDO A TELA INICIAL!****")
      escreval("*********************************")
      escreval("SELECIONE ALGUMA DAS OPÇÕES ABAIXO:")
      escreval("1.CADASTRO.(CLIENTE/PRODUTO)")
      escreval("2.VENDAS.")
      escreval("3.RELATÓRIOS.")
      escreval("4.SAIR")
      escreva("SUA OPÇÃO: ")
      leia(opcao)
      limpatela
      escolha (opcao)

      caso 1

         repita
            escreval("Escolha uma opção:")
            escreval("1.Cadastrar cliente")
            escreval("2.Cadastrar produtos")
            escreval("3.Para voltar")
            leia(opcao_cadastro)
            escolha (opcao_cadastro)

               limpatela

            caso 1

               se cont_vetor_cliente = 101 entao

                  escreval("VOCÊ ALCANÇOU O NÚMERO MÁXIMO DE CLIENTES!")
                  escreval("DIGITE 2 PARA VOLTAR.")
                  leia(opcao_cadastro_cliente)

                  se opcao_cadastro_cliente <> 2 entao

                     repita

                        escreval("VOCÊ INSERIU UM NÚMERO INVÁLIDO,DIGITE 2 PARA VOLTAR.")

                        leia(opcao_cadastro_cliente)

                     ate  (opcao_cadastro_cliente = 2)

                  fimse

               senao

                  repita

                     escreval("*********************************")
                     escreval("*******CADASTRAR CLIENTE.********")
                     escreval("*********************************")
                     escreval("Aqui você pode cadastrar clientes. Você está cadastrando o seu ",cont_vetor_cliente, "° cliente")
                     escreval("Digite o nome completo do cliente:")
                     leia(nome_cliente[cont_vetor_cliente])
                     escreval("Digite o CPF do cliente:")
                     leia(cpf[cont_vetor_cliente])
                     escreval("Digite o número de telefone do cliente:")
                     leia(tel_cliente[cont_vetor_cliente])
                     escreval("Digite o RG do cliente:")
                     leia(rg[cont_vetor_cliente])
                     escreval("O número de cadastro do seu cliente é: ",cad_cliente[cont_vetor_cliente])
                     escreval("Digite 1 para continuar e 2 para voltar:")
                     leia(opcao_cadastro_cliente)
                     cont_vetor_cliente <- cont_vetor_cliente + 1
                     cad_cliente[cont_vetor_cliente] <- cad_cliente[cont_vetor_cliente] + cont_vetor_cliente

                  ate (opcao_cadastro_cliente = 2)ou (cont_vetor_cliente = 101)

               fimse

               limpatela

            caso 2

               se cont_vetor_produto = 101 entao

                  escreval("VOCÊ ALCANÇOU O NÚMERO MÁXIMO DE PRODUTOS!")
                  escreval("DIGITE 2 PARA VOLTAR.")
                  leia(opcao_cadastro_produto)

                  se opcao_cadastro_produto <> 2 entao

                     repita

                        escreval("VOCÊ INSERIU UM NÚMERO INVÁLIDO,DIGITE 2 PARA VOLTAR.")
                        leia(opcao_cadastro_produto)

                     ate  opcao_cadastro_produto = 2

                  fimse
                  
               senao

                  repita

                     escreval("*********************************")
                     escreval("*******CADASTRAR PRODUTO.********")
                     escreval("*********************************")
                     escreval("Aqui você pode cadastrar produtos. Você está cadastrando o seu ",cont_vetor_produto, "° produto")
                     escreval("Digite o nome do produto:")
                     leia(nome_produto[cont_vetor_produto])
                     escreva("Digite a data de fabricação: ")
                     leia(data_fabricacao[cont_vetor_produto])
                     escreval("Data de validade: ")
                     leia(validade[cont_vetor_produto])
                     escreval("Digite o preço, por unidade, do produto: ")
                     leia(preco[cont_vetor_produto])
                     escreval("Digite a quantidade de produto: ")
                     leia(quant_prod[cont_vetor_produto])
                     escreval("O código do produto é: ", codigo_produto[cont_vetor_produto])
                     cont_vetor_produto <- cont_vetor_produto + 1
                     codigo_produto[cont_vetor_produto] <- codigo_produto[cont_vetor_produto] + cont_vetor_produto
                     escreval("Digite 1 para continuar e 2 para voltar. ")

                     leia(opcao_cadastro_produto)

                  ate (opcao_cadastro_produto = 2) ou (cont_vetor_produto = 101)

               fimse

               limpatela

            caso 3

               opcao_cadastro <- 3

            fimescolha

         ate opcao_cadastro = 3

      caso 2

         repita

            estoque <- 1

            opcao_vender_produto <- 1
            encontrar_produtos <- falso
            verificar_quantidade <- falso

            escreval("*********************************")
            escreval("*********VENDER PRODUTOS*********")
            escreval("*********************************")
            escreval("Digite o código do produto:")
            leia(cod_prod_venda[cont_vetor_venda])
            localizar_produto <- cod_prod_venda[cont_vetor_venda]

            para estoque de 1 ate cont_vetor_produto faca

               se codigo_produto[estoque] = cod_prod_venda[cont_vetor_venda] entao
                  encontrar_produtos <- verdadeiro

               fimse

            fimpara

            se encontrar_produtos = verdadeiro entao
               escreval("Nome do produto: ", nome_produto[localizar_produto],"  PREÇO: ", preco[localizar_produto] ,"  Quantidade: ", quant_prod[localizar_produto], "  Fabricação: ", data_fabricacao[localizar_produto], "  Validade: ", validade[localizar_produto])
               escreval("Digite a quantidade de produtos:")
               leia(quant_venda_prod[cont_vetor_venda])

               se quant_prod[localizar_produto] >= quant_venda_prod[cont_vetor_venda] entao
                  verificar_quantidade <- verdadeiro



               fimse
               se verificar_quantidade = verdadeiro entao
                  escreval("Deseja inserir número de cadastro do cliente?")
                  escreval("[1] Sim   e    [2] Não ")
                  leia(opcao_inserir_cad)

                  se opcao_inserir_cad = 1 então
                     escreval("Digite o casdastro de seu cliente: ")
                     leia(cad_cliente_venda[cont_vetor_venda])
                  fimse

                  escreval("O valor final foi, em R$:", quant_venda_prod[cont_vetor_venda] * preco[localizar_produto])
                  escreval("Método de pagamento(crédito, débito, pix ou dinheiro): ")
                  leia(metodo_pagamento[cont_vetor_venda])
                  escreval("Deseja comfirmar a compra, [1] SIM ou [2] NÃO:")
                  leia(opcao_comfirmar_venda)



                  se opcao_comfirmar_venda = 1 entao
                     escreval("COMPRA COMFIRMADA COM SUCESSO!")
                     status[cont_vetor_venda] <- "APROVADO!"
                     quant_prod[localizar_produto] <- quant_prod[localizar_produto] - quant_venda_prod[cont_vetor_venda]
                     cont_vetor_venda <- cont_vetor_venda + 1
                     escreval("Digite 1 para realizar uma nova compra ou 2 para voltar: ")
                     leia(opcao_vender_produto)

                  senao

                     escreval("COMPRA NÃO REALIZADA")
                     status[cont_vetor_venda] <- "CANCELADO!"
                     escreval("Digite 1 para realizar uma nova compra ou 2 para voltar: ")
                     leia(opcao_vender_produto)

                  fimse
                  
               senao

                  escreval("A QUANTIDADE DE PRODUTO REQUERIDA É MAIOR QUE A DO ESTOQUE.")
                  escreval("Digite 1 para realizar uma nova compra ou 2 para voltar: ")
                  leia(opcao_vender_produto)

               fimse

            senao

               escreval("PRODUTO NÃO ENCONTRADO NO ESTOQUE.")
               escreval("Digite 1 para realizar uma nova compra ou 2 para voltar: ")
               leia(opcao_vender_produto)

            fimse

         ate opcao_vender_produto = 2

      caso 3

         escreval("*********************************")
         escreval("********** RELATÓRIOS ***********")
         escreval("*********************************")
         escreval("1 - Tabela de clientes")
         escreval("2 - Tabela de produtos")
         escreval("3 - Relatórios de venda")
         leia(opcao_relatorio)

         escolha opcao_relatorio

         caso 1

            escreval("TABELA DE CLIENTES CADASTRADOS:")

            para contador_cliente de 1 ate cont_vetor_cliente faca

               escreval("NOME COMPLETO: ", nome_cliente[contador_cliente], " CPF: ", cpf[contador_cliente], "  TELEFONE: ", tel_cliente[contador_cliente], "  RG: ", rg[contador_cliente], "  CADASTRO CLIENTE: ", cad_cliente[contador_cliente])

            fimPara

         caso 2

            escreval("TABELA DE PRODUTOS CADASTRADOS:")

            para contador_produto de 1 ate cont_vetor_produto faca

               escreval("NOME PRODUTO: ", nome_produto[contador_produto], "  QUANTIDADE: ", quant_prod[contador_produto], "  CODIGO DE PRODUTO: ", codigo_produto[contador_produto], "  DATA DE FABRICAÇÃO: ", data_fabricacao[contador_produto], "  VALIDADE: ", validade[contador_produto])

            fimPara

         caso 3 //relatorio de produtos vendidos e quais os clientes que compraram

         fimescolha




      fimescolha
   ate (opcao = 4)
Fimalgoritmo