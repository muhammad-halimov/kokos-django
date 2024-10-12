from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('authorize/', views.authorize, name='authorize'),
    path('register/', views.register, name='register'),
    path('logout/', views.logout_page, name='logout'),
    path('news/', views.news, name='news'),
    path('post/<str:pk>', views.post_page, name='post'),
    path('competitions', views.competitions, name='competitions'),
    path('competition', views.competition, name='competition'),
]