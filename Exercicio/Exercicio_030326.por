programa
{	
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		escolhaOpcao()
	}

	funcao escolhaOpcao(){ //Menu

		inteiro opcao
		inteiro a = 0

		

		faca{
			
			escreva("Escolha qual exercicio: ")
			leia(opcao)
			limpa()
			
			escolha(opcao){
				caso 1:
					ex1()
					a = 0
					pare
				caso 2:
					ex2()
					a = 0
					pare
				caso 3:
					ex3()
					a = 0
					pare
				caso 4:
					ex4()
					a = 0
					pare
				caso 5:
					ex5()
					a = 0
					pare
				caso 6:
					ex6()
					a = 0
					pare
				caso 7:
					ex7()
					a = 0
					pare
				caso contrario:
					limpa()
					escreva("Numero incorreto: \n" )
					a = 1
					pare
					
			}
		}enquanto(a != 0)
			
		
	}

	funcao ex1(){ //Calculo idade.
		escreva("Calculo de idade. \n\n")
		
		inteiro ano_nascimento
		inteiro ano_futuro
		inteiro resultado

		escreva("Qual o ano de nascimento? ")
		leia(ano_nascimento)

		escreva("Qual o ano escolhido? ")
		leia(ano_futuro)

		resultado = ano_futuro - ano_nascimento

		limpa()

		escreva("Sua idade e igual a " + resultado)
	}

	funcao ex2(){ //Calculo salario anual.

		escreva("Calculo salario anual. \n\n")

		inteiro horaTraba
		inteiro horaExtra
		inteiro salAnual

		escreva("Digite o numero de horas trabalhadas no ano: ")
		leia(horaTraba)

		escreva("Digite o numero de horas extras trabalhadas no ano: ")
		leia(horaExtra)

		horaTraba *= 10
		horaExtra *= 15
		salAnual = horaTraba + horaExtra

		limpa()
		
		escreva("Seu salario anual e de: R$ " + salAnual)
	}

	funcao ex3(){ //Calculo Celsius para Fahrenheit.

		escreva("Calculo Celsius para Fahrenheit. \n\n")
		

		real celsious_calc
		real fahrenheit_calc

		escreva("Informe o valor em celsious: ")
		leia(celsious_calc)

		fahrenheit_calc = (celsious_calc * 1.8) + 32 

		limpa()

		escreva(celsious_calc + "ºC equivalem a " + mat.arredondar(fahrenheit_calc,2) + "ºF")
	}

	funcao ex4(){ //Calculo de Dividendo, Divisor, Quociente e Resto.

		escreva("Calculo de Dividendo, Divisor, Quociente e Resto. \n\n")

		inteiro divden
		inteiro divsor

		escreva("Valor numero 1: ")
		leia(divden)

		escreva("Valor numero 2: ")
		leia(divsor)

		inteiro resto = divden % divsor
		inteiro quoci = divden / divsor

		limpa()
		
		escreva("Dividendo: " + divden + "\n")
		escreva("Divisor: " + divsor + "\n")
		escreva("Quociente: " + quoci + "\n")
		escreva("Resto: " + resto + "\n")

	}

	funcao ex5(){ //Calculo da area e preco do terreno

		escreva("Calculo da area e preco do terreno \n\n")

		real largura
		real comprimento
		real preco

		escreva("Largura: ")
		leia(largura)

		escreva("Comprimento: ")
		leia(comprimento)

		escreva("preco por metro²: ")
		leia(preco)

		real area = largura * comprimento
		preco *= area

		escreva("Valor da area: "+ mat.arredondar(area,2) + "\n")
		escreva("Valor do preco de um terreno: R$" + mat.arredondar(preco, 2))
	}

	funcao ex6(){ //Calculo media de consumo de combustivel

		escreva("Calculo media de consumo de combustivel \n\n")

		real distanPerc
		real combus
		
		escreva("Distancia percorrida em km: ")
		leia(distanPerc)

		escreva("Total gasto de combustivel em litros: ")
		leia(combus)

		real media = distanPerc / combus

		limpa()
 
		escreva("A media de consumo do carro é de "+ mat.arredondar(media, 2)+ " km/L")
	}

	funcao ex7(){ //Calculo de segundos minutos e horas

		escreva("Calculo de segundos minutos e horas \n\n")

		real segundo
		real minuto
		real hora

		escreva("Valor em segundo: ")
		leia(segundo)

		minuto = segundo / 60
		hora = minuto / 60

		limpa()

		escreva(mat.arredondar(hora, 2) + ":" + mat.arredondar(minuto, 2) + ":" + segundo)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2932; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */