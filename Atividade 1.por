programa
{
	
	funcao inicio(){
        
        		/*1. Escreva um algoritmo que leia um vetor de 5 números inteiros e mostre-os.*/

			inteiro numeros [5]

			para(inteiro i = 0; i <= 4; i++){
				escreva("Escreva o número ", i + 1, ". ")
				leia(numeros[i])
			}
			
			limpa()
			
			para(inteiro i = 0; i <= 4; i++){
				escreva(numeros[i],"º Número = ", numeros[i], "\n")
			}
			
			
		}
	}	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 132; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */