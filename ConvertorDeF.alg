algoritmo "Convertor de temperatura"

var
f, c: real
inicio
Escreval("Insira a temperatura em Fahrenheit")
leia(f)

c <- (f - 32) * 5/9

Escreval("O valor em Celcius é de", c, "°c")

se c <= 15 entao
   Escreval("Está frio")
senao
     se c < 28 entao
        Escreval("Está agradavel")
     senao
          Escreval("Está calor")
     fimse
fimse



fimalgoritmo
