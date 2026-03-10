programa
{
	inclua biblioteca Matematica --> mat	

		inteiro opcaoMenu

		cadeia nome[50]

		inteiro n = 0, ul = 0, exit = 0, verd=0

		real calc_conv = 0.0
	
	funcao inicio(){
		
		

		faca{
		
		escreva("MENU DE OPCOES: \n\n")
		escreva("1- Inserir nome: \n")
		escreva("2- listar convidados: \n")
		escreva("3- Remover nome: \n")
		escreva("4- Pagamento: \n")
		escreva("0- Sair: \n\n")
		escreva("Digite a opcao: ")
		leia(opcaoMenu)

			escolha(opcaoMenu){
				caso 1:
					inserir()
					pare
				caso 2:
					listar()
					pare
				caso 3:
					remover()
					pare
				caso 4:
					pagamento()
					pare
				caso 0:
					sair()
					pare
					
				caso contrario:
					escreva("Valor invalido, digite novamente... \n")
					pare			
			}
		}enquanto(exit!=1)

	}

	funcao inserir(){

		
		limpa()
		para(inteiro i = n;i<=n;i++){
		escreva("Digite um nome: ")
		leia(nome[i])
		}
		n++
	}

	funcao listar(){
		limpa()
		escreva("Lista de convidados: \n")
		para(inteiro i=0; i< n;i++){
			escreva("Nome: ",nome[i] ," numero: ", i+1,"\n")
		}
	}
 /*
	funcao remover(){
		limpa()
		escreva("Qual convidado voce quer deletar? : \n")
		leia(ul)
		para(inteiro i=0;i<50;i++){
			se(verd == 1 e nome[i] == ""){
				se(i == ul){
					nome[i] = ""
				}
			verd++
			}
			senao{
				escreva("Vetor vazio, tente um numero valido \n")
				i=50
			}
		}
		n--
	}
*/

	funcao remover(){
		inteiro j
		listar()
		se(n > 0){
			escreva("\nDigite o NUMERO do convidado para remover: ")
			leia(j)
			j = j - 1

			se(j >= 0 e j < n){
				para(inteiro i = j; i < n - 1; i++){
					nome[i] = nome[i+1]
				}
				nome[n-1] = ""
				n--
				escreva("Removido com sucesso!\n")
			} senao {
				escreva("Número inválido!\n")
			}
		}
	}

	funcao pagamento(){
		limpa()
		calc_conv = n * 120.00
					
		escreva("Numero de convidados: ", n,". Total a pagar: R$ ", mat.arredondar(calc_conv,2),"\n")
					
						
	}

	funcao sair(){
		limpa()
		escreva("Programa finalizado com sucesso!! ")
		exit++
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1595; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */