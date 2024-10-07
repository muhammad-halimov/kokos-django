from django.contrib import admin
from . import models


@admin.register(models.User)
class UserAdmin(admin.ModelAdmin):
    list_display = models.User.DisplayFields
    search_fields = models.User.SearchableFields
    list_filter = models.User.FilterFields


@admin.register(models.HeaderModel)
class HeaderModelAdmin(admin.ModelAdmin):
    list_display = models.HeaderModel.DisplayFields
    search_field = models.HeaderModel.SearchableFields
    list_filter = models.HeaderModel.FilterFields
