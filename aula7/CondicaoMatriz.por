programa
{
	
	funcao inicio()
	{
		inteiro numeros[4][2] = {{10,20},{30,40},{12,21},{13,25}}

		inteiro numero
		logico achei = falso

		faca{
			
			escreva("\nDigite um numero para pesquisar na matriz: ")
			leia(numero)
			
			para(inteiro i = 0; i<4;i++){
				para(inteiro j = 0; j<2;j++){
					
					se(numeros[i][j] == numero){
						escreva("Numero existente: ", i,"-",j)
						achei =  verdadeiro
						pare
					}
				}
			}
			se(numero != 0){
				se(achei == falso){
					escreva("Nao tem na matriz")
				}
				
			}
			achei = falso
		}enquanto(numero != 0)
		escreva("Fim do progrma!")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 231; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */