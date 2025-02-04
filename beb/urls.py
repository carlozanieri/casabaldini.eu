from django.urls import path
from . import views

#app_name = "beb"

urlpatterns = [
    path("", views.index, name="index"),
    path("<int:author_id>/", views.detail, name="detail"),
    path("slide", views.slide, name="slide"),
    path("menu", views.menu, name="menu"),
    path("sanpiero", views.sanpiero, name="sanpiero"),
    path("mugello", views.mugello, name="mugello"),
    path("linkutili", views.linkutili, name="linkutili"),
   
]