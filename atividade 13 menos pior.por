programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u

	cadeia convidados[100], opcaoC
	inteiro opcao

	/*Não consegui resolver as falhas de receber cadeia ao invés inteiros, se fosse JS seria só um NaN, mas aqui n sei*/
	
	funcao inicio()
	{

		inteiro exibirInter = 1
		faca{
			
			escreva("***************** MENU ***************\n")
			escreva("** 1 - Cadastrar convidado          **\n")
			escreva("** 2 - Remover convidado            **\n")
			escreva("** 3 - Exibir lista de confirmados  **\n")
			escreva("** 4 - Sair                         **\n")
			escreva("**************************************\n")
			escreva(" Sua opcao: ")
			leia(opcaoC)

			se(txt.numero_caracteres(opcaoC) > 1 ou opcaoC == "" ou t.cadeia_e_inteiro(opcaoC, 10) == falso){
				limpa()
				escreva("Entrada inválida!! Tente novamente!\n\n")
				inicio()
			}

			opcao = t.cadeia_para_inteiro(opcaoC, 10)

			escolha(opcao){
				caso 1: 
						limpa()
						cadastrar()
				pare

				caso 2:
						limpa()
						remover()
				pare

				caso 3:
					limpa()
					exibir(exibirInter)
				pare

				caso 4:
					limpa()
					escreva("Valeeeuu\n")
					opcao = 5
				pare

				caso contrario:
					limpa()
					escreva("Valor inváildo!! Insira um dos valores sugeridos.\n\n")
					inicio()
					pare
			}
			
			
		}enquanto(opcao <= 4)
	}

	funcao cadastrar(){
		cadeia nconv
		inteiro prosseguir
		inteiro vezes = 0, vezes1 = 0
		
		escreva("CADASTRO DE CONVIDADOS\n[v] para voltar\n\nQuem você deseja cadastrar? ")
		leia(nconv)

		se(nconv == ""){
			limpa()
			
			escreva("Não podemos cadastrar nada!! Coloque o nome do convidado!!")
			u.aguarde(2000)
			cadastrar()
		}senao se(nconv != "" e nconv != "v"){
			para(inteiro i=0; i < 10; i++){
				se(convidados[i] == nconv){
					escreva("\nJá temos um convidado com esse nome! Deseja prosseguir?\nsim[1]	cancelar[2]\n")
					leia(prosseguir)

					se(prosseguir == 1){
						para(inteiro b=0; b < 100; b++){
							se(convidados[b] == ""){
								convidados[b] = nconv
								vezes++
								limpa()
								escreva("Cadastro de ", nconv, " concluido!!\n\n")
								cadastrar()
							}senao{
								vezes1++
								se(vezes1 == 100){
									escreva("A lista já está cheia, não podemos adicionar ninguém!! ")
									u.aguarde(2000)
									limpa()
									inicio()									
								}
							}
						}	
					}senao se(prosseguir == 2){
						limpa()
						cadastrar()
					}	
				}
			}

			se(vezes == 0){
				para(inteiro i=0; i < 100; i++){
					se(convidados[i] == "" e nconv != "v"){
						convidados[i] = nconv
						
						limpa()
						
						escreva("Cadastro de ", nconv, " concluido!!\n\n")
						cadastrar()
					}
				}
			}

			
		}senao se( nconv == "v"){
			limpa()
			inicio()
		}
	}

	funcao remover(){
		cadeia rconv1
		inteiro rconv, vezes = 0
		
		escreva("REMOÇÃO DE CONVIDADOS\n\n")
		
		para(inteiro i=0; i < 100; i++){
			se(convidados[i] != ""){
				escreva(i, " - ", convidados[i], "\n")
			}
		}
		
		escreva("\nQual o código de quem você deseja retirar da lista?\nVoltar[v]\n\n")
		leia(rconv1)

		se(rconv1 == "v"){
			limpa()
			inicio()
		}

		se(t.cadeia_e_inteiro(rconv1, 10) == falso){
			limpa()
			escreva("Insira um valor válido!!\n\n")
			remover()
		}

		rconv = t.cadeia_para_inteiro(rconv1, 10)
	
		para(inteiro i=0; i < 100; i++){
			se(rconv != i ou rconv < 0){
				vezes++
				se(vezes == 100){
					limpa()
					escreva("Insira uma valor válido!!\n\n")
					u.aguarde(1000)
					limpa()
					remover()
				}
			}senao se(convidados[i] == ""){
				limpa()
				escreva("Esta posição está vazia!! Insira um número válido!")
				u.aguarde(2000)
				limpa()
				remover()				
			}senao se(rconv == i e convidados[i] != ""){
				convidados[i] = ""
				limpa()
				escreva("Feito!")
				u.aguarde(1000)
				limpa()
				remover()
			}senao{
				limpa()
				escreva("Resposta inválida!")
				u.aguarde(1000)
				limpa()
				remover()
			}
		}
		
	}

	funcao exibir(inteiro exibirInter){

		cadeia InteE
		
		escreva("LISTA DE CONVIDADOS\n\n")
		escreva("*********************************")
		
		se(exibirInter == 1){
			para(inteiro i=0; i < 100; i++){
				se(convidados[i] != ""){
					escreva("\n** ", i, " - ", convidados[i])
				}
			}
		}senao se(exibirInter == 2){
			para(inteiro i=0; i < 100; i++){
				escreva("\n** ", i, " - ", convidados[i])
			}	
		}

		escreva("\n*********************************")
		se(exibirInter == 1){
			escreva("\nvoltar[0]\n\nLista completa [ ", exibirInter++, " ]\n\n")
		}senao se(exibirInter == 2){
			escreva("\nvoltar[0]\n\nLista parcial [ ", exibirInter--, " ]\n\n")
		}

		leia(InteE)

		se(t.cadeia_e_inteiro(InteE, 10) == falso){
			limpa()
			escreva("Entrava inválida!! Insira um dos valores propóstos!\n\n")
			exibir(1)
		}senao{
			exibirInter = t.cadeia_para_inteiro(InteE, 10)
		}

		se(exibirInter == 2){
			limpa()
			exibir(2)	
		}senao se(exibirInter == 1){
			limpa()
			exibir(1)		
		}senao se(exibirInter == 0){
			limpa()
			inicio()
		}senao se(exibirInter != 0 e (exibirInter != 2 ou exibirInter != 1)){
			limpa()
			escreva("Valor Incorreto! Tente novamente...")
			u.aguarde(1000)
			limpa()
			exibir(1)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5209; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {convidados, 7, 8, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */