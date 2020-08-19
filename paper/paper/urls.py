"""paper URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from paperapp import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.Main),
    path('Project/<str:Project_Name_encode>/', views.Project),
    path('Project/', views.Project),
    path('Paper/<str:Project_Name_encode>/<str:Paper_Name_encode>/', views.Paper),
    path('Paper/', views.Paper),
    path('EditeProject/<str:Project_Name_encode>/', views.EditeProject),
    path('EditeProject/', views.EditeProject),
    path('EditePaper/<str:Project_Name_encode>/<str:Paper_Name_encode>/', views.EditePaper),
    path('EditePaper/', views.EditePaper),
    path('uploads/', views.Paper_Img_Upload),
]


# 增加的条目
# handler400 = views.bad_request
# handler403 = views.permission_denied
# handler404 = views.page_not_found
# handler500 = views.page_error
handler400 = views.page_not_found
handler403 = views.page_not_found
handler404 = views.page_not_found
handler500 = views.page_not_found