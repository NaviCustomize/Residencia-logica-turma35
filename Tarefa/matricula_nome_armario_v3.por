programa
{
	inteiro aluno = 0

	logico armario[30]
	cadeia matricula_nome_telefone[30][3]
	inteiro des_armario

	real faturamento_matricula = 0.0
	real faturamento_aula = 0.0

	inteiro aula_personal = 0
	
	funcao inicio()
	{	
		inteiro i = 0
		inteiro menu
		
		faca{
			escreva("\n**********************************")
			escreva("\n* ACADEMIA - FORÇA TOTAL     *")
			escreva("\n**********************************")
			escreva("\n/ 1 - Nova Matrícula             /")
			escreva("\n/ 2 - Aula Personal              /")
			escreva("\n/ 3 - Listar Armários            /")
			escreva("\n/ 4 - Faturamento                /")
			escreva("\n/ 5 - Sair do Programa           /")
			escreva("\n----------------------------------")
			
			escreva("\nEscolha uma das opcoes... ")
			leia(menu)
	
			escolha(menu){
				caso 1:
					limpa()
					matriculas(i)
					i++
					pare
				caso 2:
					limpa()
					aulaPersonal()
					pare
				caso 3:
					limpa()
					listar()
					pare
				caso 4:
					limpa()
					faturamento()
					pare
				caso contrario:
					pare
			}
			
		}enquanto(menu!=5)
	}

	funcao matriculas(inteiro i){
			
				para(inteiro j = 0;j<3;j++){
					se(matricula_nome_telefone[i][j] == ""){
						se(j == 0){
							escreva("Matricula: ")
								leia(matricula_nome_telefone[i][j])
						}
						se(j == 1){
							escreva("nome: ")
								leia(matricula_nome_telefone[i][j])
						}
						se(j == 2){
							escreva("telefone: ")
								leia(matricula_nome_telefone[i][j])
						}
					}
				}
				aluno++
				faturamento_matricula += 200.00
				escreva("\n----------------------------------")
				escreva("\nDeseja ter armario? 1-Sim / 0-Não: ")
				escreva("\n----------------------------------\n")
				leia(des_armario)
				se(des_armario == 1){
					verificacao_armario(armario,des_armario)
				}
			}
			
	funcao verificacao_armario(logico armario[], inteiro des_armario){

		inteiro p
		inteiro valor_incorreto = 1

		faca{
			escreva("\n*** Reserva de Armário ***")
			escreva("\nInforme o número (1 a 30): ")
			leia(p)
			
			se(p > 0 e p <=30)
				se(armario[p-1] == falso){
					armario[p-1] = verdadeiro
					limpa()
					escreva("\n**********************************")
					escreva("\n* Armário reservado com sucesso! *")
					escreva("\n**********************************\n")
					valor_incorreto = 0
				}senao{
					escreva("\n/ Armário ocupado, tente outro... /\n")
				}
			senao{
				limpa()
				escreva("\n----------------------------------")
				escreva("\n Valor incorreto! Digite (1 a 30).")
				escreva("\n----------------------------------\n")
			}
		}enquanto(valor_incorreto != 0)
		valor_incorreto = 1
	}

	funcao aulaPersonal(){
		cadeia verificacao_matricula
		inteiro verificacao_data
		inteiro verificacao_tipo_aula

		inteiro existe_matricula = 0

		escreva("\n*** Agendamento Personal ***")
		escreva("\nInforme a matricula: ")
		leia(verificacao_matricula)

		para(inteiro i = 0; i< 30;i++){
			se(matricula_nome_telefone[i][0] == verificacao_matricula){
				existe_matricula = 1
			}
		}

		se(existe_matricula == 1){
			escreva("Informe a data: ")
			leia(verificacao_data)

			escreva("\n/ 1 - Musculação / 2 - Funcional /")
			escreva("\nEscolha o tipo de aula: ")
			leia(verificacao_tipo_aula)

			ver_matricula(verificacao_matricula, verificacao_tipo_aula)
		}senao{
			escreva("\n/ Erro: Matricula inexistente... /\n")
		}
		
		existe_matricula=0
	}

		funcao ver_matricula(cadeia verificacao_matricula, inteiro verificacao_tipo_aula){

			inteiro achei = 0
			
			para(inteiro i = 0; i<30;i++){

				se(verificacao_matricula == matricula_nome_telefone[i][0]){
					achei = 1
				}
			}
			se(achei == 1){
				limpa()
				ver_tipo_aula(verificacao_tipo_aula)
				escreva("\n**********************************")
				escreva("\n* MATRICULA CONFIRMADA!      *")
				escreva("\n**********************************\n")
			}senao{
				limpa()
				escreva("\n/ Matrícula não encontrada! /\n")
			}
		}

		funcao ver_tipo_aula(inteiro verificacao_tipo_aula){
			se(verificacao_tipo_aula == 1){
				faturamento_aula += 100.00
				aula_personal++
			}se(verificacao_tipo_aula == 2){
				faturamento_aula += 80.00
				aula_personal++
			}
		}
		
	funcao listar(){
		escreva("\n*** STATUS DOS ARMÁRIOS ***\n")
		para(inteiro i = 0; i<30;i++){		
			se(armario[i] == verdadeiro){
				escreva("[ ", i+1 ," : OCUPADO ] ")
			}senao{
				escreva("[ ", i+1 ," : livre   ] ")
			}
			// Quebra de linha a cada 3 armários para organizar
			se((i + 1) % 3 == 0) escreva("\n")
		}	
		escreva("\n---------------------------\n")
	}

	funcao faturamento(){
		escreva("\n**********************************")
		escreva("\n* RELATÓRIO FINANCEIRO      *")
		escreva("\n**********************************")
		escreva("\n/ Matrículas: ",aluno)
		escreva("\n/ Aulas Personal: ",aula_personal)
		escreva("\n/ Total Matrículas: R$ ",faturamento_matricula)
		escreva("\n/ Total Aulas: R$ ",faturamento_aula)
		escreva("\n----------------------------------")
		escreva("\n TOTAL GERAL: R$ ",faturamento_matricula + faturamento_aula)
		escreva("\n**********************************\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4517; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {armario, 5, 8, 7}-{matricula_nome_telefone, 6, 8, 23};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */