algoritmo "Conversor2.0"

var
valorR, valorD, cotacao, tempC, tempF: real
opcaoA, opcaoB: literal
continuar: logico
inicio

Escreval("Bem vindo ao conversor Pace 1.0")
continuar <- verdadeiro

repita
   Escreval("Informe a opção que deseja: ")
   Escreval(" ")
   Escreval(" 1-Celsius para Fahrenheit")
   Escreval(" 2-Fahrenheit para Celsius")
   Escreval(" 3-Reais(R$) para Dólar(US$)")
   Escreval(" 4-Dólar(US$) para Reais(R$)")
   Escreval(" 5-Encerrar")
   Escreval(" ")
   Escreval("Digite um numero correspondente a opção preferida: ")
   leia(opcaoA)
   limpatela
   escolha opcaoA

   caso "1"
      Escreval("Digite a temperatura em °C: ")
      leia (tempC)
      tempF <- (tempC * 9/5) + 32
      escreval(tempC, "°C equivale a ", tempF:2:2, "ºF")
   caso "2"
      Escreval("Digite a temperatura em ºF: ")
      leia(tempF)
      tempC <- (tempF - 32) * 5/9
      escreval(tempF, "ºF equivale a ", tempC:2:2, "ºC")
   caso "3"
      Escreval("Digite a cotação do dólar atual:")
      leia (cotacao)
      escreva("Digite o valor em reais a ser convertido: ")
      leia(valorR)
      valorD <- valorR / cotacao
      escreval("Com R$", valorR:2:2, " você terá US$", valorD:2:2)
   caso "4"
      Escreval("Digite a cotação do dólar atual:")
      leia (cotacao)
      escreva("Digite o valor em dólares a ser convertido: ")
      leia(valorD)
      valorR <- valorD * cotacao
      escreval("Com US$", valorD:2:2, " você terá R$", valorR:2:2)
   caso "5"
      interrompa
   outrocaso
      limpatela
      escreval("Digite uma opção válida!")
   fimescolha
   repita
      Escreval("Gostaria de voltar ao menu de opções? (Sim (s) ou Não (n) ")
      leia(opcaoB)
   ate (opcaoB = "n") ou (opcaoB = "s")
   se (opcaoB = "n") entao
      continuar <- Falso
   senao
      limpatela
   fimse
ate (opcaoA = "5") ou (continuar = Falso)
limpatela
Escreval("Obrigado por usao o nosso programa")
fimalgoritmo
