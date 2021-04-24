programa
{
	inclua biblioteca Tipos
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro vetor[5][3], contador = 1
		cadeia pares = "", posicao = ""
		
		para(inteiro i=0; i < 5; i++){
			para(inteiro b=0; b < 3; b++){
				escreva("Qual o valor no número ", contador, "? ")
				leia(vetor[i][b])
				contador++
				limpa()

				se(vetor[i][b] %2 == 0){
					pares += vetor[i][b] + ", "
					posicao += "["+ i + "]"+ "[" +b+ "], "
				}
			}
		}

		escreva("Temos os números pares: ", pares)
		escreva("\nNas posições: ", posicao)
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 552; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pares, 9, 9, 5}-{posicao, 9, 21, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */