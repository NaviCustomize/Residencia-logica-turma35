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
			escreva("\nACADEMIA - FORÇA TOTAL\n----------------------------------\n1 - Nova Matrícula\n2 - Aula Personal\n3 - Listar Armários\n4 - Faturamento\n5 - Sair do Programa\n----------------------------------\n")
			
			escreva("Escolha uma das opcoes... ")
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
				escreva("Deseja ter armario? 1 - sim / 0 - nao: ")
				leia(des_armario)
				se(des_armario == 1){
					verificacao_armario(armario,des_armario)
				
				}
					
			}
			
	funcao verificacao_armario(logico armario[], inteiro des_armario){

		inteiro p
		inteiro valor_incorreto = 1

		faca{
			escreva("Informe qual armario voce quer (1 a 30): ")
			leia(p)
			
			se(p > 0 e p <=30)
				se(armario[p-1] == falso){
					armario[p-1] = verdadeiro
					limpa()
					escreva("Armário reservado com sucesso!")
					valor_incorreto = 0
				}senao{
					escreva("Armário ocupado, digite novamente...\n")
				}
			senao{
				limpa()
				escreva("Valor incorreto, digite novamente...\n")
				
			}
		}enquanto(valor_incorreto != 0)
		valor_incorreto = 1
	}

	funcao aulaPersonal(){
		cadeia verificacao_matricula
		inteiro verificacao_data
		inteiro verificacao_tipo_aula

		inteiro existe_matricula = 0

		escreva("Informe a matricula: ")
		leia(verificacao_matricula)

		para(inteiro i = 0; i< 30;i++){
			se(matricula_nome_telefone[i][0] == verificacao_matricula){
				existe_matricula = 1
			}
		}

		se(existe_matricula == 1){
			escreva("Informe a data: ")
			leia(verificacao_data)

			escreva("Informe a aula: 1 - Musculação Personal / 2 - Funcional: ")
			leia(verificacao_tipo_aula)

			ver_matricula(verificacao_matricula, verificacao_tipo_aula)
		}senao{
			escreva("Matricula inexistente...\n")
		}
		
			
		existe_matricula=0

	}
		//verifica se a matricula esta cadastrada
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
				escreva("Matricula cadastrada! \n\n")
			}senao{
				limpa()
				escreva("Matricula nao cadastrada! \n\n")
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
		para(inteiro i = 0; i<30;i++){		
			se(armario[i] == verdadeiro){
				escreva("\nArmario ", i+1 ," Ocupado...\n")
			}senao{
				escreva("\nArmario ", i+1 ," Livre...\n")
			}
		}	
	}

	funcao faturamento(){
		real total_geral

		escreva("\nNumero de matriculas realizadas: ",aluno)
		escreva("\nNumero de aulas personal: ",aula_personal)
		escreva("\nTotal faturado com matriculas: ",faturamento_matricula)
		escreva("\nTotal faturado com aulas: ",faturamento_aula)
		escreva("\nTotal geral arrecadado: ",faturamento_matricula + faturamento_aula,"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2086; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matricula_nome_telefone, 6, 8, 23}-{armario, 85, 35, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */