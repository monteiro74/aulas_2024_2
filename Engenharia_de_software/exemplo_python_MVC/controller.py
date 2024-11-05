# controller.py
from model import UserModel
from view import UserView

class UserController:
    def __init__(instance):
        instance.model = UserModel()
        instance.view = UserView()

    def add_user(instance, name):
        instance.model.add_user(name)

    def show_users(instance):
        users = instance.model.get_users()
        instance.view.display_users(users)

# main.py
if __name__ == "__main__":
    controller = UserController()
    controller.add_user("Alice")
    controller.add_user("Bob")
    controller.show_users()


