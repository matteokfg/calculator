defmodule Calculadora do
  #cria-se o módulo da calculadora
  def adiçao(num1, num2) do
    #função da adição
    IO.puts("#{num1} + #{num2} e igual a: #{num1 + num2}")
  end

  def subtraçao(num1, num2) do
    #função da subtração, que vai até zero
    if num1 - num2 < 0 do
      IO.puts("#{num1} - #{num2} e negativo!")
    else
      IO.puts("#{num1} - #{num2} e igual a: #{num1 - num2}")
    end
  end

  def multiplicaçao(num1, num2) do
    #função da multipicação
    IO.puts("#{num1} vezes #{num2} e igual a: #{num1*num2}")
  end

  def divisao(num1, num2) do
    #função da divisão, que devolve tanto a divisão, quanto o resto da divisão
    IO.puts(
      "#{num1} dividido por #{num2} da: #{div(num1, num2)}, com resto: #{rem(num1, num2)}"
      )
  end

  def potenciacao(num1, num2) do
    #função da potencição
    # essa forma de fazer potencia nao aguenta potencias muito grandes
    num3 = :math.pow(num1, num2)
    IO.puts("#{num1} elevado a #{num2} da: #{num3}")
  end
end

#Exemplos de testes:
# Calculadora.adiçao(1, 1)
# Calculadora.subtraçao(1, 2)
# Calculadora.multiplicaçao(13, 13)
# Calculadora.divisao(60, 10)
# Calculadora.potenciacao(4, 2)
