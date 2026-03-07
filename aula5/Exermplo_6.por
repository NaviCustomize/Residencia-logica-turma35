programa
{
	
	funcao inicio()
	{
		real n1, n2
		escreva("Digitre a nota1: ")
		leia(n1)

		escreva("Digite a nota2: ")
		leia(n2)

		
		escreva("Media: ", calcular(n1,n2))
		
	}

	funcao real calcular(real n1, real n2){

		real media
		
		media = (n1 + n2) / 2
		retorne media
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 115; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */