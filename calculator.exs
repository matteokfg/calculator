defmodule Calculadora do
  @moduledoc """
  Cria-se o módulo da calculadora, na qual averá as funções de `adicao/2`,
  `subtracao/2`, `multiplicacao/2`, `divisao/2`, `potenciacao/2` e `radiciacao/1`.
  """

  @doc """
  Função da adição.
  ## Teste:
    Calculadora.adicao(1, 1)
    iex> 2
  """

  @doc """
  -> Função da subtração, que vai até zero.
  ## Teste:
    Calculadora.subtraçao(1, 2)
    iex> 1 - 2 e negativo!
    Calculadora.subtracao(8, 3)
    iex> 8 - 3 e igual a: 5
  """

  @doc """
  -> Função da multipicação.
  ## Teste:
    Calculadora.multiplicacao(13, 13)
    iex> 13 vezes 13 e igual a: 169
  """

  @doc """
  -> Função da divisão, que devolve tanto a divisão, quanto o resto da divisão.
  ## Teste:
    Calculadora.divisao(60, 10)
    iex> 60 dividido por 10 da: 6.0, com resto: 0
  """

  @doc """
  -> Função da potencição, essa forma de fazer potencia não aguenta potencias muito grandes.
  ## Teste:
    Calculadora.potenciacao(4, 2)
    iex> 4 elevado a 2 da: 16.0
  """

  @doc """
  -> Essa forma faz raíz quadrada.
  ## Teste:
    Calculadora.radiciacao(16)
    iex> A raiz quadrada de 16 e: 4.0
  """

  def adicao(num1, num2) do
    IO.puts("#{num1} + #{num2} e igual a: #{num1 + num2}")
  end

  def subtracao(num1, num2) do
    if num1 - num2 < 0 do
      IO.puts("#{num1} - #{num2} e negativo!")
    else
      IO.puts("#{num1} - #{num2} e igual a: #{num1 - num2}")
    end
  end

  def multiplicacao(num1, num2) do
    multi = num1*num2
    IO.puts("#{num1} vezes #{num2} e igual a: #{multi}")
  end

  def divisao(num1, num2) do
    divi = div(num1, num2)
    IO.puts(
      "#{num1} dividido por #{num2} da: #{divi}, com resto: #{rem(num1, num2)}"
      )
  end

  def potenciacao(num1, num2) do
    num3 = :math.pow(num1, num2)
    IO.puts("#{num1} elevado a #{num2} da: #{num3}")
  end

  def radiciacao(num1) do
    num2 = :math.sqrt(num1)
    IO.puts("A raiz quadrada de #{num1} e: #{num2}")
  end
end

defmodule Teorema do
  @moduledoc """
    Esse modulo contem teormeas matematicos, que poderao ser resolvidos com ele.
  """

  @doc """
  -> calculo da hipotenusa ( maior lado do triangulo ), a partir dos dois catetos
  ## Teste:
    Teorema.de_pitagoras_hip(3, 4)
    iex>A hipotenusa e: 5.0
  """

  @doc """
  -> calculo o cateto, a partir da hipotenusa e do outro cateto
  ## Teste:
    Teorema.de_pitagoras_cat(5, 3)
    iex>O cateto e: 4.0
  """

  @doc """
  -> calcula as duas raizes de uma equacao de segundo grau usando a formula de bhaskara
  ## Teste:
    Teorema.de_bhaskara(1, 8, -9)
    iex>Aplicando a formula, o primeiro x e: 1 e o segundo x e: -9
  """

  @doc """
  -> calcula o motante final e depois o juros usando o capital inicial, a taxa e o tempo percorrido,
  sendo esses ultimos na mesma medida de tempo
  ## Teste:
    Teorema.de_juros_compostos(1000, 0.1, 10)
    iex>Aplicando a formula, o motante final e: 1010.04 , sendo o juros: 10.04
  """

  @doc """
  -> calcula o parametro que for nil, ou seja o q nao foi calculado ainda
  ## Teste:
    Teorema.fundamental_da_reta(nil, -1.5, -2, -2.25, 0)
    iex>Y e igual a 3
  """

  @doc """
  -> calcula a area de um triangulo a partir de sua base e altura
  ## Teste:
    Teorema.area_do_triangulo(4,5)
    iex>O triangulo de base 4 e altura 5 tem area de 10 u².
  """

  def de_pitagoras_hip(b, c) do
    a = :math.sqrt(:math.pow(b, 2) + :math.pow(c, 2))
    IO.puts("A hipotenusa e: #{a}")
  end

  def de_pitagoras_cat(a, c) do
    b = :math.sqrt(:math.pow(a, 2) - :math.pow(c, 2))
    IO.puts("O cateto e: #{b}")
  end

  def de_bhaskara(a, b, c) do
    delta = :math.pow(b, 2) - 4*a*c
    x1 = div(trunc(-1*b + :math.sqrt(delta)), 2*a)
    x2 = div(trunc(-1*b - :math.sqrt(delta)), 2*a)
    IO.puts("Aplicando a formula, o primeiro x e: #{x1} e o segundo x e: #{x2}")
  end

  def de_juros_compostos(c, i, n) do
    m = c * :math.pow((1 + i), n)
    j = m - c
    IO.puts("Aplicando a formula, o motante final e: #{m} , sendo o juros: #{j}")
  end

  def fundamental_da_reta(y \\ nil, yo \\ nil, m \\ nil, x \\ nil, xo \\ nil) do
    cond do
      y == nil and yo != nil and m != nil and x != nil and xo != nil ->
        y = m * (x - xo) + yo
        IO.puts("Y e igual a #{y}")

      yo == nil and y != nil and m != nil and x != nil and xo != nil->
        yo = -1 * (m * (x - xo) - y)
        IO.puts("Y inicial e igual a #{yo}")

      m == nil and yo != nil and y != nil and x != nil and xo != nil->
        m = div((y- yo), (x - xo))
        IO.puts("O coeficiente linear e igual a #{m}")

      x == nil and yo != nil and m != nil and y != nil and xo != nil->
        x = div((y - yo), m) + xo
        IO.puts("X e igual a #{x}")

      xo == nil and yo != nil and m != nil and x != nil and y != nil->
        xo = -1 * (div((y - yo), m) - x)
        IO.puts("X inical e igual a #{xo}")

      true -> IO.puts("Esta faltando informaçoes, tente novamente")
    end
  end

  def area_do_triangulo(b \\ nil, h \\ nil) do
    area = div(b * h, 2)
    IO.puts("O triangulo de base #{b} e altura #{h} tem area de #{area} u².")
  end
end

#Exemplos de testes:
# Calculadora.adiçao(1, 1)
# Calculadora.subtraçao(1, 2)
# Calculadora.multiplicaçao(13, 13)
# Calculadora.divisao(60, 10)
# Calculadora.potenciacao(4, 2)
# Teorema.area_do_triangulo(4,5)
