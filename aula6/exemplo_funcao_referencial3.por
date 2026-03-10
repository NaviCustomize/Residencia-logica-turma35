programa
{	
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro numero = 0

		escreva("numero sorteado: ", sorteio())
		numero = sorteio()
		exibe(numero)
		escreva("\n", numero)
		
		
	}

	funcao inteiro sorteio(){
		inteiro n
		n = u.sorteia(1, 1000)
		retorne n
	}

	funcao exibe(inteiro &n){
		escreva("\n", n+1)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 204; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {n, 23, 23, 1}-{numero, 7, 10, 6}-{n, 18, 10, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */