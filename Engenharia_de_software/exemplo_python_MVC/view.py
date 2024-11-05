# view.py
class UserView:
    def display_users(instance, users):
        print("Lista de Usuários:")
        for user in users:
            print(f"- {user}")


