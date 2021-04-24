programa
{
	
	funcao inicio()
	{
		cadeia procura[3][3] ={{"Walso", "Vila", "Volley"}, {"Willso", "Valdo", "Wally"}, {"Wallacy", "Willy", "Vasco"}}
		inteiro contador =0

		para(inteiro i=0; i < 3; i++){
			para(inteiro b=0; b < 3; b++){
				se(procura[i][b] == "Willy"){
					escreva("Achamos!! Está na posição [", i,"]", "[", b,"] do vetor.")
					contador++
				}
			}
		}
		se(contador == 0){
			escreva("Infelizmente não encontamso... fale com o pessoal do RH")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 140; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */