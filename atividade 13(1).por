programa
{
	inclua biblioteca Util --> u
		
	funcao inicio()
	{
	/*Escreva um algoritmo que gerencia uma lista de convidados para uma festa de geeks, nerds e cosplayers. Seu programa deve cadastrar, remover e exibir a lista de convidados. Serão somente 100!*/
		cadeia convidados[100], nConv, voltar
		inteiro opcao, resposta, eConv
	
		faca{
		limpa()
		escreva("***************** MENU ***************\n")
		escreva("** 1 - Cadastrar convidado          **\n")		
		escreva("** 2 - Remover convidado            **\n")
		escreva("** 3 - Exibir lista de confirmados  **\n")
		escreva("** 4 - Sair                         **\n")
		escreva("**************************************\n")
		escreva(" Sua opcao: ")
		leia(opcao)
		limpa()

		escolha(opcao){
			caso 1: 
				inteiro contador = 1
				escreva("Quem você deseja adicionar? ")
				leia(nConv)

				para(inteiro i=0; i < 100; i++){
					se(convidados[i] == ""){
						convidados[i] = nConv
						pare				
					}
				}

				pare
			
			caso 2:
				limpa()
				para(inteiro i=0; i < 100; i++){
					se(convidados[i] != ""){				
						escreva("\n", i, " - ", convidados[i])
					}
				}
				escreva("\n\nQual a posição de quem você deseja retirar?\n")
				leia(eConv)

				convidados[eConv] = ""

				pare
				
			caso 3:
				para(inteiro i=0; i < 100; i++){
					se(convidados[i] != ""){				
						escreva(i, " - ", convidados[i])
					}
				}

				escreva("\n\nDigite enter para voltar")
				leia(voltar)

				pare
				
			caso 4:
				limpa()
				escreva("Valeeeu")
				opcao = 6
		}


		}enquanto(opcao < 5)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1529; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {convidados, 8, 9, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */