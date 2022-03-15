defmodule Calculadora do
  @moduledoc """
  Cria-se o módulo da calculadora, na qual averá as funções de `adicao/2`,
  `subtracao/2`, `multiplicacao/2`, `divisao/2`, `potenciacao/2` e `radiciacao/1`.
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
      iex> 4 elevado a 2 da: 16.0
    """

    num3 = :math.pow(num1, num2)
    IO.puts("#{num1} elevado a #{num2} da: #{num3}")
  end

  def radiciacao(num1) do
    @doc """
    -> Essa forma faz raíz quadrada.
    ## Teste:
      Calculadora.radiciacao(16)
      iex> A raiz quadrada de 16 e: 4.0
    """

    num2 = :math.sqrt(num1)
    IO.puts("A raiz quadrada de #{num1} e: #{num2}")
  end
end

defmodule Teorema do
  @moduledoc """
    Esse modulo contem teormeas matematicos, que poderao ser resolvidos com ele.
  """

  def de_pitagoras_hip(b, c) do
    @doc """
      -> calculo da hipotenusa ( maior lado do triangulo ), a partir dos dois catetos
      ## Teste:
        Teorema.de_pitagoras_hip(3, 4)
        iex>A hipotenusa e: 5.0
    """

    a = :math.sqrt(:math.pow(b, 2) + :math.pow(c, 2))
    IO.puts("A hipotenusa e: #{a}")
  end

  def de_pitagoras_cat(a, c) do
    @doc """
      -> calculo o cateto, a partir da hipotenusa e do outro cateto
      ## Teste:
        Teorema.de_pitagoras_cat(5, 3)
        iex>O cateto e: 4.0
    """

    b = :math.sqrt(:math.pow(a, 2) - :math.pow(c, 2))
    IO.puts("O cateto e: #{b}")
  end

  def de_bhaskara(a, b, c) do
    @doc """
      -> calcula as duas raizes de uma equacao de segundo grau usando a formula de bhaskara
      ## Teste:
      Teorema.de_bhaskara(1, 8, -9)
      iex>Aplicando a formula, o primeiro x e: 1 e o segundo x e: -9
    """
    delta = :math.pow(b, 2) - 4*a*c
    x1 = div(trunc(-1*b + :math.sqrt(delta)), 2*a)
    x2 = div(trunc(-1*b - :math.sqrt(delta)), 2*a)
    IO.puts("Aplicando a formula, o primeiro x e: #{x1} e o segundo x e: #{x2}")
  end
end
