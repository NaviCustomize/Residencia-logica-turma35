programa
{	
	inclua biblioteca Graficos --> g
	
	inclua biblioteca Texto --> t
	funcao inicio(){
		
		cadeia moveBranco
		inteiro a =0
		cadeia tabuleiroFormatado = ""
	
		cadeia tabuleiro[8][8] ={{"torrePretoL","cavaloPretoL","bispoPretoL","rainhaPreto","reiPreto","bispoPretoR","cavaloPretoR","torrePretoR"},
							{"peaoPreto1","peaoPreto2","peaoPreto3","peaoPreto4","peaoPreto5","peaoPreto6","peaoPreto7","peaoPreto8"},
							{"","","","","","","",""},
							{"","","","","","","",""},
							{"","","","","","","",""},
							{"","","","","","","",""},
							{"peaoBranco1","peaoBranco2","peaoBranco3","peaoBranco4","peaoBranco5","peaoBranco6","peaoBranco7","peaoBranco8"},
							{"torreBrancoL","cavaloBrancoL","bispoBrancoL","rainhaBranco","reiBranco","bispoBrancoR","cavaloBrancoR","torreBrancoR"}}
		
		/*
		cadeia tabuleiro[8][8] ={{"♖","♘","♗","♔","♕","♗","♘","♖"},
							{"♙","♙","♙","♙","♙","♙","♙","♙"},
							{" "," "," "," "," "," "," "," "},
							{" "," "," "," "," "," "," "," "},
							{" "," "," "," "," "," "," "," "},
							{" "," "," "," "," "," "," "," "},
							{"♟","♟","♟","♟","♟","♟","♟","♟"},
							{"♜","♞","♝","♛","♚","♝","♞","♜"}}
		*/
		
		faca{

			
			mostrarTabuleiro(tabuleiroFormatado, tabuleiro)
			
			
			escreva("\nInfome qual peca branca voce quer mover...")
				leia(moveBranco)
	
			para(inteiro i=0;i<8;i++){
				para(inteiro j=0;j<8;j++){
					
					se(moveBranco == tabuleiro[i][j]){
						tabuleiro[i][j] = ""
						escreva("Qual posicao voce quer mover...")
						escreva("Linha: ")
							leia(i)
						escreva("Coluna: ")
							leia(j)
						tabuleiro[i][j] = moveBranco
						escreva("\n")
					}
				}
			}

			escreva("Deseja continuar? 1 - sim / 0 - nao... ")
			leia(a)
			limpa()
		}enquanto(a!=0)	
	}

	funcao mostrarTabuleiro(cadeia tabuleiroFormatado, cadeia tabuleiro[][]){
		para(inteiro i=0;i<8;i++){
				para(inteiro j=0;j<8;j++){
				tabuleiroFormatado = t.preencher_a_esquerda(' ', 13, "" + tabuleiro[i][j])
				escreva(tabuleiroFormatado, "  ")
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
 * @POSICAO-CURSOR = 169; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */