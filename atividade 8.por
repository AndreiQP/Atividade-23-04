programa
{
	
	funcao inicio()
	{
		inteiro vetor[3][3] = {{1, 2, 3}, {7, 8 , 9}, {11, 12, 15}}

		para(inteiro i=0; i < 3; i++){
			para(inteiro b=0; b < 3; b++){
				escreva(vetor[i][b], "	")
				se(b == 2){
					escreva("\n")
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 196; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */