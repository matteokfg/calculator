# importa a biblioteca 'math'
import math

#------------------------------>cria PA:
#------>com recursão:
def calcula_progressao(numero, razao):
    """
        A função recebe o número inical, a razão, que sempre vai ser somada.
        A função devolve, inicialmente, o número inicial. Depois, devolve o número mais a
        razão, e depois, essa soma mais a razão, e assim por diante.
        A função finaliza quando não tiver mais memória para prosseguir essas somas.
        Utiliza a recursão.
    """
    if (razao == 0):
        # o número permanecerá o mesmo, logo print uma vez e encerra.
        print(numero)
    else:
        # faz a soma do número mais a razão e print.
        numero += razao
        print(numero)
        # chama a função ela mesma sendo o número = ele + razão / cria a recursão
        calcula_progressao(numero, razao)

#--------->sem recursão
# define a variável 'infinito' como igual ao número infinito.
infinito = math.inf
def cal_pa(numero, razao, limite=infinito):
    """
        A função recebe o número inical, a razão, que sempre vai ser somada e o limite, o qual
        quando atingido, finaliza a função. Esse limite tem como valor padrão o infinito.
        A função devolve, inicialmente, o número inicial. Depois, devolve o número mais a
        razão, e depois, essa soma mais a razão, e assim por diante.
        Não utiliza a recursão.
    """
    # print o múmero inicial.
    print(numero)
    while (numero < limite):
        if (razao == 0):
            # se o número permanecerá constante, então para a função.
            break
        else:
            # soma o número com a razão e print.
            numero += razao
            print(numero)


if __name__ == '__main__':
    print(cal_pa(1,1))
