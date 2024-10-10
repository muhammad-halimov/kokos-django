from django.contrib.auth.models import AbstractUser
from django.db import models


# Модель пользователя, наследующая от AbstractUser
class User(AbstractUser):
    username = models.CharField(max_length=255, unique=True, null=True, blank=True)
    surname = models.CharField(max_length=255, unique=True, null=True, blank=True)
    email = models.EmailField(max_length=255, unique=True, null=True, blank=True)
    phone = models.CharField(max_length=255, unique=True, null=True, blank=True)
    login = models.CharField(max_length=255, null=True, blank=True)
    avatar = models.ImageField(upload_to='avatars', default='assets/img/icons/avatar.svg', null=True, blank=True)

    # Поля даты создания и обновления
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    # Настройки отображения, поиска и фильтрации в админке
    DisplayFields = ['id', 'username', 'surname', 'email', 'phone', 'login', 'avatar', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    # Установка поля email как основного идентификатора пользователя
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username']

    # Метакласс и свод правил отображения в Админке по умолчанию
    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'User'
        verbose_name_plural = 'Users'

    # Представление модели в Админке
    def __str__(self):
        return self.username


# Модель пунктов в хеддере
class HeaderModel(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)
    url = models.CharField(max_length=255, blank=True, null=True)

    # Поля даты создания и обновления
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    # Настройки отображения, поиска и фильтрации в админке
    DisplayFields = ['id', 'title', 'url', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    # Метакласс и свод правил отображения в Админке по умолчанию
    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Header Link'
        verbose_name_plural = 'Header Links'

    # Представление модели в Админке
    def __str__(self):
        return self.title
