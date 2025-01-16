from django.urls import path
from . import views
from django.views.decorators.clickjacking import xframe_options_exempt


app_name = "beb"

urlpatterns = [
    path("", views.index, name="index"),
    path("<int:author_id>/", views.detail, name="detail"),
    path("slide", views.slide, name="slide"),
    path("menu", views.menu, name="menu"),
   
]