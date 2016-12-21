
"""
Controlor de numeros primos de Demian Rihs
"""
from math import sqrt
from itertools import count, islice

__version__ = '1.0'
__author__ = 'Demian Rihs'


class PrimeClass(object):
    """
    Esta classe genera un objecto con un metodo is_prime()
    que retorna True cuando la variabile tiene un nr primo
    """

    def _init_(self, num_int):
        self.num_int = num_int

    def is_prime(self, num_int):
        """
        itertools tiene una manera eficiente de utilizar rangos
        de numeros y no se riesga un error de Overlow si
        el numero esta mas grande que 2^31.
        Para ahorrar tiempo de calculo es suficiente calcular
        los numeros entre num_int y sqrt(num_int).
        """

        if num_int < 2:
            return False
        for el in islice(count(2), int(sqrt(num_int)-1)):
            if not num_int % el:
                return False
        return True
