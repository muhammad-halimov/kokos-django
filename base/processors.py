from . import models


def header_menu(request):
    return {'header_menu': models.HeaderModel.objects.all()}
