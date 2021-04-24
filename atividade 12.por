programa
{
	
	funcao inicio()
	{
		/*12.Identificadores que “Qual é” são um fenômeno na internet. Faca um gerador de “qual é” baseado por exemplo, no dia, mês e ano de nascimento, cor da blusa, autor, livro favorito ou
mesmo gerando frases a partir de números aleatórios. Fique livre para escolher outros exemplos.*/

		cadeia ano[10]= {"Wellington", "Ricardo", "Vanderlinson", "Lindomar", "Whinderson", "Marcelandro", "Amilton", "Rogéridson", "Wagner", "Zé"}, 
		mes[12] = {" da Silva ", " Rodigues ", " Soares ", " Junior ", " Santos ", " da Cunha ", " Alex ", " mecânico ", " Borges ", " Lipa ", " Gonçáves ", " Andrade "}, 
		hrr[10] = {"aspirante a cantor sertaneijo ", "da saveiro rebaixada", "bombado", ", o servente que vai de ressaca", "do corta giro", "fale rodízio", "pagodeiro", "corinthiano", "do golf tunado", 
		"engenheiro de obra"}, Resultado = ""
		inteiro nUser

		para(inteiro i=0; i < 10; i++){
			escreva(i, " - ", ano[i], "\n")
		}
		escreva("Qual o último dígito do ano que você nasceu?\n")
		leia(nUser)

		Resultado += ano[nUser]
		limpa()

		para(inteiro i=0; i < 12; i++){
			escreva(i, " - ", mes[i], "\n")
		}
		escreva("Qual mês você nasceu?\n")
		leia(nUser)

		Resultado +=mes[nUser]
		limpa()

		para(inteiro i=0; i < 10; i++){
			escreva(i, " - ", hrr[i], "\n")
		}
		
		escreva("Qual o último dígito do horário que você está lendo?\n")
		leia(nUser)

		Resultado +=hrr[nUser]
		limpa()

		escreva("Você é o: ", Resultado)
		
	}	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1029; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */