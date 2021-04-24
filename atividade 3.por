programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		/*Escreva um algoritmo que recebe 4 notas, mostre-as e a média na tela.*/

		real notas[4], media = 0.0
		inteiro elementos = u.numero_elementos(notas)
		
		para(inteiro i = 0; i <=3; i++){
			escreva("Qual foi a sua ", i + 1, "º nota? ")
			leia(notas[i])
			media += notas[i]
		}
		
		media /= u.numero_elementos(notas)
		limpa()

		para(inteiro i = 0; i <= 3; i++){
			escreva("*******************\n")
			escreva("** Nota ", i, " = ", notas[i], " **\n")
		}

		escreva("*******************\n")
		escreva("** MédiaF = ", media, " **\n")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 605; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */