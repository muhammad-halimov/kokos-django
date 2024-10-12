from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse
from django.shortcuts import render, redirect
from . import forms
from . import models


# Функция для отображения главной страницы
def index(request):
    news_obj = models.News.objects.all()[:4]

    # Передача данных в контекст для рендеринга шаблона
    context = {'news': news_obj}
    return render(request, template_name='base/main.html', context=context)


# Функция для отображения страницы входа в систему
def authorize(request):
    # Если пользователь уже авторизован, перенаправление на главную страницу
    if request.user.is_authenticated:
        return redirect('index')

    # Обработка POST-запроса формы входа
    if request.method == 'POST':
        # noinspection PyBroadException
        try:
            email = request.POST.get('email').lower()
            password = request.POST.get('password')

            # Поиск пользователя с указанным email-адресом
            models.User.objects.get(email=email)

            # Аутентификация пользователя
            user = authenticate(request, email=email, password=password)

            # Проверка пользователя на существование
            if user is not None:
                login(request, user)
                return redirect('index')

        except BaseException:
            messages.error(request, "Данные неправильны или пользователь не найден")

    # Передача данных в контекст для рендеринга шаблона
    context = {}
    return render(request, template_name='base/authorize.html', context=context)


# Функция для отображения страницы регистрации
def register(request):
    # Если пользователь уже авторизован, перенаправление на главную страницу
    if request.user.is_authenticated:
        return redirect('index')

    # Обработка POST-запроса формы регистрации
    if request.method == 'POST':
        form = forms.CustomUserCreationForm(request.POST)

        if form.is_valid():
            user = form.save(commit=False)
            user.username = user.username.lower()
            form.save()
            login(request, user)
            return redirect('index')
        else:
            messages.error(request, 'Ошибка в процессе регистрации, возможно пароль слабый')

    # Передача данных и формы в контекст для рендеринга шаблона
    context = {'form': forms.CustomUserCreationForm}
    return render(request, template_name='base/register.html', context=context)


# Функция для выхода из аккаунта
@login_required(login_url='authorize')
def logout_page(request):
    logout(request)
    return redirect('index')


# Функция для отображения новостной страницы
def news(request):
    news_obj = models.News.objects.all()[:9]

    # Передача данных в контекст для рендеринга шаблона
    context = {'news': news_obj}
    return render(request, template_name='base/news.html', context=context)


# Функция для отображения конкретного поста
def post_page(request, pk):
    news_obj = models.News.objects.all()[:4]
    post = models.News.objects.get(id=pk)

    # Передача данных в контекст для рендеринга шаблона
    context = {'post': post, 'news': news_obj}
    return render(request, template_name='base/post.html', context=context)


# Функция для отображения страницы матчей
def competitions(request):
    # Передача данных в контекст для рендеринга шаблона
    context = {}
    return render(request, template_name='base/competitions.html', context=context)


# Функция для отображения страницы матчей
def competition(request):
    # Передача данных в контекст для рендеринга шаблона
    context = {}
    return render(request, template_name='base/competition.html', context=context)
