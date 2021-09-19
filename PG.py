#importa a biblioteca 'math'
import math

#--------------------------------->cria PG:
#---------->com recursão:
def calcula_pg(numero, razao):
    """
        A função recebe um número inicial e um, chamado de razão, o qual vai ser multiplicado.
        A função devolve, inicialmente, o número inicial. Depois devolve o número vezes a razão. E
        depois, essa multiplicação vezes a razão e assim por diante.
        Utiliza recursão.
    """
    if (razao == 1):
        # como o número permanecerá constante, print uma vez e encerra.
        print(numero)
    else:
        # multiplica o múmero e a razão e print o resultado.
        numero *= razao
        print(numero)
        # chama a própria função / cria a recursão.
        calcula_pg(numero, razao)

#------------>sem recursão:
# cria a variável 'infinito' e dá o valor do infinito.
infinito = math.inf
def cal_pg(numero, razao, limite=infinito):
    """
        A função recebe um número inicial e um, chamado de razão, o qual vai ser multiplicado, e
        o limite, quando atingido encerra a função, e tem seu valor padrão como infinito.
        A função devolve, inicialmente, o número inicial. Depois devolve o número vezes a razão. E
        depois, essa multiplicação vezes a razão e assim por diante.
        Não utiliza recursão.
    """
    # print o número inicial.
    print(numero)
    while (numero <= limite):
        if (razao == 1):
            # como o número permanece constante, print uma vez e para a função.
            break
        else:
            # multiplica  o número com a razão e print.
            numero *= razao
            print(numero)


if __name__ == '__main__':
    cal_pg(1, 2)
