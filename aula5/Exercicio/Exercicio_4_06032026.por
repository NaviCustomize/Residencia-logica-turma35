programa
{
	
	funcao inicio()
	{	
		inteiro num1
		
		escreva("Informe um numero: ")
		leia(num1)


		tabuada(num1)
		
					
		
	}

	funcao tabuada(inteiro x){

		para(inteiro i = 0; i< 10; i++ ){
			
			inteiro res = x * i 
			
			escreva(x,"x",i,"=",res,"\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 206; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */