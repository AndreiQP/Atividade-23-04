programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		/*Escreva um algoritmo que preencha um vetor de 30 posições com números entre 1 e 15 sorteados pelo computador. Depois disso, peça para o usuário digitar um número (chave) e seu programa deve mostrar em que posições essa chave foi encontrada. Mostre também
		quantas vezes a chave foi sorteada.*/


		inteiro numero [30], numeroUsuario, vezes = 0

		para(inteiro i= 0; i < 30; i++){
			numero[i] = u.sorteia(0, 15)
		}

		escreva("Qual sua chave? ")
		leia(numeroUsuario)

		escreva("Encontramos seu número na(s) posição(ões) : ")

		para(inteiro i=0; i < 30; i++){
			se(numeroUsuario == numero[i]){
				escreva(i, ", ")
				vezes += 1
			}
		}
		se(vezes ==0){
			escreva(" not found\n ")
		}senao{
			escreva("\nTotalizando ", vezes, " vez(es)\n")			
		}			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 478; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero, 11, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */