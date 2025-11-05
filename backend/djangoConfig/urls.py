
from django.urls import path
from app.views import service_list

urlpatterns = [
    path('admin/', admin.site.urls),
    path('services/', service_list, name='service_list'),
]
