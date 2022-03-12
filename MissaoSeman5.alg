algoritmo "semnome"
// Função :
// Autor :
// Data : 11/03/2022
// Seção de Declarações
var
tempC, tempF: real
opcao: literal


procedimento criarMenu()
inicio
escreval("1-Celsius para Fahrenheit")
escreval("2-Fahrenheit para Celsius")
escreval("3-Registro diário")
escreval("4-Sair ")
escreval("------------------------------------------")
escreva("Informe a opção que deseja: ")
leia(opcao)
fimprocedimento



funcao fahrenheitParaCelsius(tempF: real): real
inicio
retorne(tempF - 32) * 5/9
fimfuncao



funcao celsiusParaFahrenheit(tempC: real): real
inicio
retorne(tempC * 9/5) + 32
fimfuncao


procedimento registrarT()
var
i,j,aux: inteiro
hora: vetor[1..4] de inteiro
temps: vetor[1..4] de inteiro
inicio
para i de 1 ate 4 faca
   escreva("Informe a hora da temperatura observada: ")
   leia(hora[i])
   escreva("Informe a temperatura em ºC: ")
   leia(temps[i])
fimpara

para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      se temps[j] > temps[i] entao
         aux <- temps[i]
         temps[i] <- temps[j]
         temps[j] <- aux

         aux <- hora[i]
         hora[i] <- hora[j]
         hora[j] <- aux
      fimse
   fimpara
fimpara

escreval()
para i de 1 ate 4 faca
   escreval("Temperatura", temps[i], "ºC, registrada às", hora[i], "h, corresponde a ", celsiusParaFahrenheit(temps[i]):2:2, "ºF.")
fimpara
fimprocedimento


inicio

repita

   criarMenu()
   escolha(opcao)

   caso "1"
      escreval()
      escreva("Informe a temperatura em ºC ")
      leia (tempC)
      escreval()
      escreval(tempC, "ºC equivale a ", celsiusParaFahrenheit(tempC):2:2, "ºF")


   caso "2"
      escreval()
      escreva("Informe a temperatura em ºFahrenheit: ")
      leia (tempF)
      escreval()
      escreval(tempF, "ºF equivale(m) a ", fahrenheitParaCelsius(tempF):2:2, "ºC")

   caso "3"
      registrarTemperaturas()

   caso "4"
      interrompa

   outrocaso
      escreval("Opção não existente")

   fimescolha
ate opcao = "4"








fimalgoritmo
