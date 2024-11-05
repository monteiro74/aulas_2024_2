# view.py

import tkinter as tk
from tkinter import messagebox, ttk
from viewmodel import ViewModel

class View:
    def __init__(self, root, view_model):
        self.view_model = view_model

        # Configurações da interface
        self.root = root
        self.root.title("Exemplo MVVM")
        self.root.geometry("400x300")  

        self.label = tk.Label(root, text="Digite seu nome:")
        self.label.pack(pady=10)

        self.entry = tk.Entry(root)
        self.entry.pack(pady=10)

        self.button = tk.Button(root, text="Salvar", command=self.save_data)
        self.button.pack(pady=10)

        # Configuração da Treeview (grid)
        self.tree = ttk.Treeview(root, columns=("Nome"), show='headings')
        self.tree.heading("Nome", text="Nome")
        self.tree.pack(pady=10, fill=tk.BOTH, expand=True)

        self.update_grid()

    def save_data(self):
        nome = self.entry.get()
        if nome:
            self.view_model.add_pessoa(nome)
            self.update_grid()
            self.entry.delete(0, tk.END)  
        else:
            messagebox.showwarning("Aviso", "Por favor, digite um nome.")

    def update_grid(self):
        # Limpa a grid antes de atualizar
        for row in self.tree.get_children():
            self.tree.delete(row)

        # Adiciona os dados da ViewModel à grid
        for nome in self.view_model.get_pessoas():
            self.tree.insert("", tk.END, values=(nome,))


