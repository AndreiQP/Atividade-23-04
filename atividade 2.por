programa
{
	
	funcao inicio()
	{
		/*2. Escreva um algoritmo que leia um vetor de 10 números reais e mostre-os na ordem inversa.*/
			real numeros [10]

			para(inteiro i = 0; i <= 9; i++){
				escreva("Escreva o número ", i + 1, ". ")
				leia(numeros[i])
			}
			
			limpa()
			
			para(inteiro i = 9; i >= 0; i--){
				escreva(numeros[i],"º Número = ", numeros[i], "\n")
			}
			
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 157; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */