from django.contrib.auth.forms import UserCreationForm
from . import models
from django import forms


# Форма для регистрации пользователя
class CustomUserCreationForm(UserCreationForm):
    class Meta(UserCreationForm.Meta):
        model = models.User
        fields = ['username', 'surname', 'email', 'phone', 'login', 'password1', 'password2']
        widgets = {
            # 'username': forms.TextInput(attrs={'class': 'form-control form-control-lg', 'required': True, 'placeholder': 'Ваше имя'}),
            'username': forms.TextInput(attrs={'required': True, 'placeholder': 'Ваше имя'}),
            'surname': forms.TextInput(attrs={'required': True, 'placeholder': 'Ваша фамилия'}),
            'email': forms.EmailInput(attrs={'required': True, 'placeholder': 'Ваша почта'}),
            'phone': forms.TextInput(attrs={'required': True, 'placeholder': 'Ваш телефон'}),
            'login': forms.TextInput(attrs={'required': True, 'placeholder': 'Ваш логин'}),
        }
