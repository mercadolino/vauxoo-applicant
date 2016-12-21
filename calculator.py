"""
Calculador de suma
"""
__version__ = '1.0'
__author__ = 'Demian Rihs'


class CalculatorClass(object):
    """
    Esta classe genera un objecto con un metodo sum()
    que retorna la suma de una lista de nr
    """

    def _init_(self, num_list):
        self.num_list = num_list

    def sum(self, num_list):
        """
        El metodo sum ya esta implementado en python
        """
        return sum(num_list)
