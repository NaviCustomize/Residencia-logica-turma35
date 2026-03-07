programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real altura[5] 
		cadeia nome[5]

		inteiro crit = 0


		para(inteiro i = 0; i< 5;i++){
			limpa()
			crit = 1
			escreva("Informacoes da ", i+1,"º pessoa: \n\n")
			escreva("Informe o nome: ")
			leia(nome[i])

			crit=1
			
			faca{
				escreva("Informe a altura: ")
				leia(altura[i])
				se(altura[i]<0){
					limpa()
					escreva("Valor invalido, digite novamente... \n")
				}
					
			}enquanto(altura[i]<=0)
		}
		limpa()
		para(inteiro i = 0; i< 5;i++){

			escreva("Nome: ", nome[i]," \nAltura: ", mat.arredondar(altura[i],2) , "\n\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 305; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */