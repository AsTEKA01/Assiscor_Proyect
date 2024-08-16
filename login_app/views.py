from django.shortcuts import render, redirect
from django.contrib.auth import login as auth_login
from django.contrib.auth import authenticate
from django.http import HttpResponse

# create templates #

def login_view(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        admin = authenticate(request, username=username, password=password)
        if admin is not None:
            auth_login(request, admin)
            return redirect('home')  # Redirige a la página de inicio u otra página después del login
        else:
            return HttpResponse('Credenciales inválidas')
    return render(request, 'login_app/templates/login.html')  # Asegúrate de que el nombre de la plantilla es correcto
