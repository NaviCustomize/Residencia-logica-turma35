programa
{
	
	funcao inicio()
	{	
		inteiro hotel[8][15]
		
		inteiro numero = 0
		inteiro numero_andar
		inteiro numero_quarto
		
		inteiro total_disp = 120
		inteiro total_indis = 0

		faca{
			
			para(inteiro i =0;i< 8;i++){
				para(inteiro j=0;j<15;j++){
					se(hotel[i][j] == 0){
						hotel[i][j] = 0
					}	
				}
			}
	
			escreva("Infome o andar: ")
			leia(numero_andar)
			numero_andar -= 1
		
			escreva("Infome o quarto: ")
			leia(numero_quarto)
			numero_quarto -= 1

			se(numero_andar < 8 e numero_quarto < 15){
				para(inteiro i =0;i< 8;i++){
					para(inteiro j=0;j<15;j++){
						se(numero_andar == i){
							se(numero_quarto == j){
								se(hotel[i][j] != 1){
									se(numero_andar < 8 e  numero_quarto < 15){
										limpa()
										hotel[i][j] = 1
										total_disp--
										total_indis++
									}
								}senao{
									limpa()
									escreva("Ocupado... \n\n")
								}
							}
						}
					}
				}
			}senao{
				limpa()
				escreva("Andar ou Quarto inexistente... \n\n")
			}

			para(inteiro i =0;i< 8;i++){
				escreva("Andar ", i+1, ": ")
				para(inteiro j=0;j<15;j++){
					escreva(hotel[i][j], " ")	
				}
				escreva("\n")
			}

			escreva("\nTotal de vagas disponiveis: ", total_disp," \n")
			escreva("Total de vagas ocupadas: ", total_indis, "\n\n")

		}enquanto(numero_andar >= 0 e numero_quarto >= 0)
		limpa()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1347; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {hotel, 6, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */