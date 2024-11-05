# main.py

import tkinter as tk
from view import View
from viewmodel import ViewModel

if __name__ == "__main__":
    root = tk.Tk()

    # Criando o ViewModel
    view_model = ViewModel()

    # Criando a View
    view = View(root, view_model)

    root.mainloop()


