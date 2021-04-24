programa
{
	
	funcao inicio()
	{
		inteiro pares[5], impares[5], total[10], numeroUser, contador =0
		
		para(inteiro i=0; i < 5; i++){
			escreva(i + 1, "º número par: ")
			leia(numeroUser)
			se(numeroUser % 2 == 0){
				pares[i] = numeroUser
				limpa()
			}senao{
				limpa()
				escreva("Número inválido, tente novamente\n")
				i--
			}
		}

		limpa()
		
		para(inteiro i=0; i < 5; i++){
			escreva(i + 1, "º número impar: ")
			leia(numeroUser)
			se(numeroUser % 2 == 1){
				impares[i] = numeroUser
				limpa()
			}senao{
				limpa()
				escreva("Número inválido, tente novamente\n")
				i--
			}
		}

		escreva("O vetor final ficou com os valores: ")
		para(inteiro i=0; i < 5; i++){
				total[i + contador] = pares[i]
				total[i+contador + 1] = impares[i]		
				contador++			
			}

		escreva("O Vetor final ficou com os valores: ")
		para(inteiro i=0; i < 10; i++){
			escreva(total[i], ", ")
		}escreva("\n")
	}
}



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 780; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pares, 6, 10, 5}-{impares, 6, 20, 7}-{total, 6, 32, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */