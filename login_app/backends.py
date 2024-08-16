
from django.contrib.auth.backends import BaseBackend
from django.contrib.auth.hashers import check_password
from django.contrib.auth.models import Admin

class AdminBackend(BaseBackend):
    def authenticate(self, request, username=None, password=None):
        try:
            admin = Admin.objects.get(username=username)
            if check_password(password, admin.password):
                return admin
        except Admin.DoesNotExist:
            return None

    def get_user(self, user_id):
        try:
            return Admin.objects.get(pk=user_id)
        except Admin.DoesNotExist:
            return None
