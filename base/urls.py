from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('authorize/', views.authorize, name='authorize'),
    path('register/', views.register, name='register'),
    path('logout/', views.logout_page, name='logout'),
    path('news/', views.news, name='news'),
    path('post/<str:pk>/', views.post_page, name='post'),
    path('competitions/', views.competitions, name='competitions'),
    path('competition/', views.competition, name='competition'),
    path('shop/', views.shop, name='shop'),
    path('shop/men/', views.shop_men, name='shop_men'),
    path('profile/', views.profile, name='profile'),
    path('history/', views.history, name='history'),
    path('cart/', views.cart, name='cart'),
    path('partners/', views.partners, name='partners'),
    # path('product/<str:pk>/', views.product, name='product'),
    path('product/', views.product, name='product'),
    path('gellery/', views.gellery, name='gellery'),
    path('team/', views.team, name='team'),
    path('vk-check/', views.vk_check, name='vk-check'),
]