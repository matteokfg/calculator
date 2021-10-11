# importa a biblioteca 'math'
import math

#------------------------------>cria PA:
#------>com recursão:
def calcula_progressao(numero, razao, contador = 0):
    """
        A função recebe o número inical, a razão, que sempre vai ser somada.
        A função devolve, inicialmente, o número inicial. Depois, devolve o número mais a
        razão, e depois, essa soma mais a razão, e assim por diante.
        A função finaliza quando não tiver mais memória para prosseguir essas somas.
        A variável 'contador' demonstra o número do termo correspondente a variável 'número'.
        Utiliza a recursão.
    """
    if (razao == 0):
        # o número permanecerá o mesmo, logo print uma vez e encerra.
        print(f"A{contador} : {numero}")
    else:
        # faz a soma do número mais a razão e print.
        numero += razao
        contador += 1
        print(f"A{contador} : {numero}")
        # chama a função ela mesma sendo o número = ele + razão / cria a recursão
        calcula_progressao(numero, razao, contador)

#--------->sem recursão
# define a variável 'infinito' como igual ao número infinito.
infinito = math.inf
def cal_pa(numero, razao, limite=infinito, contador = 1):
    """
        A função recebe o número inical, a razão, que sempre vai ser somada e o limite, o qual
        quando atingido, finaliza a função. Esse limite tem como valor padrão o infinito.
        A função devolve, inicialmente, o número inicial. Depois, devolve o número mais a
        razão, e depois, essa soma mais a razão, e assim por diante.
        A variável 'contador' representa o número do termo correspondente a variável 'número'.
        Não utiliza a recursão.
    """
    # print o múmero inicial.
    print(f"A{contador} : {numero}")
    while (numero < limite):
        if (razao == 0):
            # se o número permanecerá constante, então para a função.
            break
        else:
            # soma o número com a razão e print.
            numero += razao
            contador += 1
            print(f"A{contador} : {numero}")


if __name__ == '__main__':
    print(calcula_progresao(1,1))
    print(cal_pa(1,1))
