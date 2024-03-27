from . import views
from django.urls import path



urlpatterns = [
    path('', views.home),
    path('ping/', views.ping, name="ping"),
]