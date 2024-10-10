from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('authorize/', views.authorize, name='authorize'),
    path('register/', views.register, name='register'),
    path('logout/', views.logout_page, name='logout'),
]