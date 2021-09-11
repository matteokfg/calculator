import math

# cria PA
#com recursão
def calcula_progressao(numero, razao):
    if (razao == 0):
        print(numero)
    else:
        numero = numero + razao
        print(numero)
        calcula_progressao(numero, razao)

#sem recursão
infinito = math.inf
def cal_pa(numero, razao, limite=infinito):
    """
        preencher depois
    """
    print(numero)
    while (numero < limite):
        if (razao == 0):
            # se o número não aumenta, então print uma vez e stop
            break
        else:
            numero += razao
            print(numero)


if __name__ == '__main__':
    print(cal_pa(1,1))
