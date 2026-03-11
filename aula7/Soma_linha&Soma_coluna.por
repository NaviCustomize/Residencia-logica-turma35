programa
{	
	inteiro matriz[3][2]
	
	funcao inicio(){
		ler()
		limpa()
		linha()
		coluna()
	}

	funcao ler(){

		para(inteiro i =0 ; i<3;i++){
			para(inteiro j = 0;j<2;j++){

				escreva("Informe um numero: ")
				leia(matriz[i][j])
			}
		}
		escreva("\n")
	}

	funcao linha(){
7
		inteiro totalLinha = 0
		
		para(inteiro i =0 ; i<3;i++){
			para(inteiro j = 0;j<2;j++){

				totalLinha += matriz[i][j]
			}
			escreva("Total linha ",i+1, ": ",totalLinha, "\n")
			totalLinha = 0
		}
		escreva("\n")
	}

	funcao coluna(){
		
		inteiro totalColuna = 0

		para(inteiro j =0 ; j<2;j++){
			para(inteiro i = 0;i<3;i++){

				totalColuna += matriz[i][j]

			}
			escreva("Total coluna ",j+1, ": ",totalColuna, "\n")
			totalColuna = 0
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 266; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 3, 9, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */