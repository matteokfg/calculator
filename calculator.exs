defmodule Calculadora do
  @moduledoc """
  Cria-se o módulo da calculadora, na qual averá as funções de `adicao/2`,
  `subtracao/2`, `multiplicacao/2`, `divisao/2` e `potenciacao/2`.
  """

  def adicao(num1, num2) do
    @doc """
    Função da adição.

    ## Teste:
      Calculadora.adicao(1, 1)
      iex> 2
    """

    IO.puts("#{num1} + #{num2} e igual a: #{num1 + num2}")
  end

  def subtracao(num1, num2) do
    @doc """
    -> Função da subtração, que vai até zero.

    ## Teste:
      Calculadora.subtraçao(1, 2)
      iex> 1 - 2 e negativo!

      Calculadora.subtracao(8, 3)
      iex> 8 - 3 e igual a: 5
    """

    if num1 - num2 < 0 do
      IO.puts("#{num1} - #{num2} e negativo!")
    else
      IO.puts("#{num1} - #{num2} e igual a: #{num1 - num2}")
    end
  end

  def multiplicacao(num1, num2) do
    @doc """
    -> Função da multipicação.

    ## Teste:
      Calculadora.multiplicacao(13, 13)
      iex> 13 vezes 13 e igual a: 169
    """

    IO.puts("#{num1} vezes #{num2} e igual a: #{num1*num2}")
  end

  def divisao(num1, num2) do
    @doc """
    -> Função da divisão, que devolve tanto a divisão, quanto o resto da divisão.

    ## Teste:
      Calculadora.divisao(60, 10)
      iex> 60 dividido por 10 da: 6.0, com resto: 0
    """

    IO.puts(
      "#{num1} dividido por #{num2} da: #{div(num1, num2)}, com resto: #{rem(num1, num2)}"
      )
  end

  def potenciacao(num1, num2) do
    @doc """
    -> Função da potencição, essa forma de fazer potencia não aguenta potencias muito grandes.

    ## Teste:
      Calculadora.potenciacao(4, 2)
      iex> 4 elevado a 2 da: 16
    """

    num3 = :math.pow(num1, num2)
    IO.puts("#{num1} elevado a #{num2} da: #{num3}")
  end
end
