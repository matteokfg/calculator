import math

#cria PG
#com recursão
def calcula_pg(numero, razao):
    if (razao == 1):
        print(numero)
    else:
        numero = numero * razao
        print(numero)
        calcula_pg(numero, razao)

#sem recursão
infinito = math.inf
def cal_pg(numero, razao, limite=infinito):
    print(numero)
    while (numero <= limite):
        if (razao == 1):
            # print uma vez e stop
            break
        else:
            numero *= razao
            print(numero)


if __name__ == '__main__':
    cal_pg(1, 2)
