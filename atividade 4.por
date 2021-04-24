programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro Numeros [50]

		escreva("Os números sorteados foram: ")

		para(inteiro i = 0; i < u.numero_elementos(Numeros); i++){
			Numeros[i] = u.sorteia(0, 50)
			escreva(Numeros[i], ", ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 186; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */