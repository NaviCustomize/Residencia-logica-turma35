programa
{
	//funcao de passagem de referencia
	funcao inicio()
	{
		inteiro numero = 100

		escreva("O valor incrementado é: ", incrementar(numero))
		escreva("\nValor de var. numero: ", numero)

		escreva("\nO valor incrementado é: ", incrementar2(numero))
		escreva("\nValor de var. numero: ", numero)
		
	}

	funcao inteiro incrementar(inteiro &n){
		n = n + 10
		retorne n
	}

	funcao inteiro incrementar2(inteiro n){
		n = n + 20
		retorne n
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 365; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */