# model.py
class UserModel:
    def __init__(instance):
        instance.users = []

    def add_user(instance, name):
        instance.users.append(name)

    def get_users(instance):
        return instance.users


