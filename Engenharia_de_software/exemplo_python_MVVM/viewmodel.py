# viewmodel.py

from model import Pessoa

class ViewModel:
    def __init__(self):
        self.pessoas = []  

    def add_pessoa(self, nome):
        pessoa = Pessoa(nome)
        self.pessoas.append(pessoa)

    def get_pessoas(self):
        return [pessoa.nome for pessoa in self.pessoas]  


