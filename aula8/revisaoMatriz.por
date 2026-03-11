programa
{
	
	funcao inicio()
	{
		cadeia carros[3][3] = {{"KIO-2390 ","HB20 ","NAO" },
						   {"KBC-2391 ","FUSCA ","SIM "},
						   {"PAA-1A90 ","SANDEIRO ","NAO "}}
		alugar(carros)
	}

	funcao alugar(cadeia &matriz[][]){
		matriz[2][2] = "SIM"
		exibirCarros(matriz)
	}
	funcao exibirCarros(cadeia matriz[][]){
		para(inteiro i=0;i<3;i++){
			para(inteiro j=0;j<3;j++){
				escreva(matriz[i][j])
			}
			escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 282; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */