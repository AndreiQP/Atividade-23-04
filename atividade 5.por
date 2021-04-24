programa
{
	
	funcao inicio()
	{
		/* Escreva um algoritmo que leia um vetor de 10 números inteiros e mostre quantos números pares e ímpares tiveram, e em que posição estão no vetor*/

		inteiro numeros [10], resto
		cadeia tipo = ""

		para(inteiro i = 0; i <= 9; i++){
			escreva("Escreva o número ", i + 1, ". ")
			leia(numeros[i])
		}

		limpa()

		resto = 0
		tipo = "pares"	
		mostrar(0, numeros, tipo)
		posicao(0, numeros)


		resto=1
		tipo= "ímpares"
		mostrar(1,numeros, tipo)
		posicao(1, numeros)

	}

	funcao mostrar(inteiro resto, inteiro numeros[], cadeia tipo){
		inteiro contador = 1
		para(inteiro i = 0; i <= 9; i++){
			se(numeros[i] % 2 == resto){
				enquanto(contador == 1){
					escreva("\nOs Números ", tipo, " são: ")
					contador++
				}
				escreva(numeros[i], ", ")				
			}
		}
	}

	funcao posicao( inteiro resto, inteiro numeros[]){
		inteiro contador = 1
		para(inteiro i = 0; i <= 9; i++){
			se(numeros[i] % 2 == resto){
				enquanto(contador == 1){
					escreva("nas posições: ")
					contador++
				}
				escreva(i, ", ")				
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 500; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */