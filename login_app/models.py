from django.db import models

# Create your models here.


class Admin(models.Model):
    username = models.CharField(max_length=50)  # tabla 'admins'
    password = models.CharField(max_length=100)  # la estructura de la tabla

    class Meta:
        db_table = 'admins'  # se relaciona con la tabla 'admins'
