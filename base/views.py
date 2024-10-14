from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect
from django.views.decorators.csrf import csrf_exempt

from . import forms
from . import models


# Функция для отображения главной страницы
def index(request):
    # Получаем последние 4 новости
    news_obj = models.News.objects.order_by('-id')[:4]
    last_news = models.News.objects.last()
    tournaments = models.Tournament.objects.order_by('-id')[:2]
    gallery_ = models.Gallery.objects.order_by('-id')[1:]
    gallery_single = models.Gallery.objects.order_by('-id')[:1]

    # Передача данных в контекст для рендеринга шаблона
    context = {
        'news': news_obj,
        'last_news': last_news,
        'tournaments': tournaments,
        'gallery_main': gallery_,
        'gallery_single': gallery_single,
    }
    return render(request, 'base/main.html', context=context)



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
                return redirect('profile')

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


# Функция для отображения страницы конкретного матча
def competition(request):
    # Передача данных в контекст для рендеринга шаблона
    context = {}
    return render(request, template_name='base/competition.html', context=context)


# Функция для отображения страницы магазина
def shop(request):
    # Передача данных в контекст для рендеринга шаблона
    context = {}
    return render(request, template_name='base/shop.html', context=context)


# Функция для отображения страницы магазина/мужчины
def shop_men(request):
    # Передача данных в контекст для рендеринга шаблона
    context = {}
    return render(request, template_name='base/shop_men.html', context=context)


# Функция для отображения страницы ЛК
@login_required(login_url='authorization')
def profile(request):
    # Передача данных в контекст для рендеринга шаблона
    context = {}
    return render(request, template_name='base/profile.html', context=context)


# Функция для отображения страницы истории ФК
def history(request):
    # Передача данных в контекст для рендеринга шаблона
    context = {}
    return render(request, template_name='base/history.html', context=context)


# Функция для отображения страницы корзины пользователя
def cart(request):
    # Передача данных в контекст для рендеринга шаблона
    context = {}
    return render(request, template_name='base/cart.html', context=context)


# Функция для отображения страницы партнеров
def partners(request):
    # Передача данных в контекст для рендеринга шаблона
    context = {}
    return render(request, template_name='base/partners.html', context=context)


# Функция для отображения страницы конкретного продукта
def product(request):
    # Передача данных в контекст для рендеринга шаблона
    context = {}
    return render(request, template_name='base/product.html', context=context)


# Функция для отображения страницы галереи
def gallery(request):
    # Передача данных в контекст для рендеринга шаблона
    context = {}
    return render(request, template_name='base/gallery.html', context=context)


# Функция для отображения страницы команду
def team(request):
    # Передача данных в контекст для рендеринга шаблона
    context = {}
    return render(request, template_name='base/team.html', context=context)


# Функция для отображения страницы команду
@csrf_exempt # Игнорирование csrf_token
def vk_check(request): # Добавление очереди
    if request.method == 'POST':
        try:
            data = json.loads(request.body) # Берем данные из POST
            user_info = data.get('user_info')

            print(user_info)

            # Возвращаем promise в JS
            return JsonResponse({'success': True, 'queue_number': queue.number, 'window_number': queue.window.number})
        except (ValueError, KeyError): # Разного рода ошибки и исключение
            return JsonResponse({'error': 'Invalid request data'}, status=400)
    return JsonResponse({'error': 'Invalid request method'}, status=400)
