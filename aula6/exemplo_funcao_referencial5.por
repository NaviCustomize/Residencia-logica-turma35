programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro vetor[]
		
		sorteio(vetor)
	}

	funcao sorteio(inteiro n[]){
		
		para(inteiro i =0; i<10;i++){
			n[i] = u.sorteia(1, 1000)
			escreva(n[i], "\n")
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 190; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */