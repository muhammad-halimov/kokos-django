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


@admin.register(models.AgeCategory)
class AgeCategory(admin.ModelAdmin):
    list_display = models.AgeCategory.DisplayFields
    search_fields = models.AgeCategory.SearchableFields
    list_filter = models.AgeCategory.FilterFields


@admin.register(models.Color)
class Color(admin.ModelAdmin):
    list_display = models.Color.DisplayFields
    search_fields = models.Color.SearchableFields
    list_filter = models.Color.FilterFields


@admin.register(models.Season)
class Season(admin.ModelAdmin):
    list_display = models.Season.DisplayFields
    search_fields = models.Season.SearchableFields
    list_filter = models.Season.FilterFields


@admin.register(models.Material)
class Material(admin.ModelAdmin):
    list_display = models.Material.DisplayFields
    search_fields = models.Material.SearchableFields
    list_filter = models.Material.FilterFields


@admin.register(models.ClothesType)
class ClothesType(admin.ModelAdmin):
    list_display = models.ClothesType.DisplayFields
    search_fields = models.ClothesType.SearchableFields
    list_filter = models.ClothesType.FilterFields


@admin.register(models.Size)
class Size(admin.ModelAdmin):
    list_display = models.Size.DisplayFields
    search_fields = models.Size.SearchableFields
    list_filter = models.Size.FilterFields


@admin.register(models.Brand)
class Brand(admin.ModelAdmin):
    list_display = models.Brand.DisplayFields
    search_fields = models.Brand.SearchableFields
    list_filter = models.Brand.FilterFields


@admin.register(models.Gender)
class Gender(admin.ModelAdmin):
    list_display = models.Gender.DisplayFields
    search_fields = models.Gender.SearchableFields
    list_filter = models.Gender.FilterFields


@admin.register(models.Media)
class Media(admin.ModelAdmin):
    list_display = models.Media.DisplayFields
    search_fields = models.Media.SearchableFields
    list_filter = models.Media.FilterFields


@admin.register(models.Clothes)
class Clothes(admin.ModelAdmin):
    list_display = models.Clothes.DisplayFields
    search_fields = models.Clothes.SearchableFields
    list_filter = models.Clothes.FilterFields


@admin.register(models.FootballerPosition)
class FootballerPosition(admin.ModelAdmin):
    list_display = models.FootballerPosition.DisplayFields
    search_fields = models.FootballerPosition.SearchableFields
    list_filter = models.FootballerPosition.FilterFields


@admin.register(models.Footballer)
class Footballer(admin.ModelAdmin):
    list_display = models.Footballer.DisplayFields
    search_fields = models.Footballer.SearchableFields
    list_filter = models.Footballer.FilterFields


@admin.register(models.DirectorType)
class DirectorType(admin.ModelAdmin):
    list_display = models.DirectorType.DisplayFields
    search_fields = models.DirectorType.SearchableFields
    list_filter = models.DirectorType.FilterFields


@admin.register(models.Director)
class Director(admin.ModelAdmin):
    list_display = models.Director.DisplayFields
    search_fields = models.Director.SearchableFields
    list_filter = models.Director.FilterFields


@admin.register(models.CoachStaffType)
class CoachStaffType(admin.ModelAdmin):
    list_display = models.CoachStaffType.DisplayFields
    search_fields = models.CoachStaffType.SearchableFields
    list_filter = models.CoachStaffType.FilterFields


@admin.register(models.CoachStaff)
class CoachStaff(admin.ModelAdmin):
    list_display = models.CoachStaff.DisplayFields
    search_fields = models.CoachStaff.SearchableFields
    list_filter = models.CoachStaff.FilterFields


@admin.register(models.BreedingServiceType)
class BreedingServiceType(admin.ModelAdmin):
    list_display = models.BreedingServiceType.DisplayFields
    search_fields = models.BreedingServiceType.SearchableFields
    list_filter = models.BreedingServiceType.FilterFields


@admin.register(models.BreedingService)
class BreedingService(admin.ModelAdmin):
    list_display = models.BreedingService.DisplayFields
    search_fields = models.BreedingService.SearchableFields
    list_filter = models.BreedingService.FilterFields


@admin.register(models.StaffType)
class StaffType(admin.ModelAdmin):
    list_display = models.StaffType.DisplayFields
    search_fields = models.StaffType.SearchableFields
    list_filter = models.StaffType.FilterFields


@admin.register(models.Staff)
class Staff(admin.ModelAdmin):
    list_display = models.Staff.DisplayFields
    search_fields = models.Staff.SearchableFields
    list_filter = models.Staff.FilterFields


@admin.register(models.Team)
class Team(admin.ModelAdmin):
    list_display = models.Team.DisplayFields
    search_fields = models.Team.SearchableFields
    list_filter = models.Team.FilterFields


@admin.register(models.Arena)
class Arena(admin.ModelAdmin):
    list_display = models.Arena.DisplayFields
    search_fields = models.Arena.SearchableFields
    list_filter = models.Arena.FilterFields


@admin.register(models.Outcome)
class Outcome(admin.ModelAdmin):
    list_display = models.Outcome.DisplayFields
    search_fields = models.Outcome.SearchableFields
    list_filter = models.Outcome.FilterFields


@admin.register(models.Match)
class Match(admin.ModelAdmin):
    list_display = models.Match.DisplayFields
    search_fields = models.Match.SearchableFields
    list_filter = models.Match.FilterFields


@admin.register(models.TicketPlace)
class TicketPlace(admin.ModelAdmin):
    list_display = models.TicketPlace.DisplayFields
    search_fields = models.TicketPlace.SearchableFields
    list_filter = models.TicketPlace.FilterFields


@admin.register(models.Ticket)
class Ticket(admin.ModelAdmin):
    list_display = models.Ticket.DisplayFields
    search_fields = models.Ticket.SearchableFields
    list_filter = models.Ticket.FilterFields


@admin.register(models.Countries)
class Countries(admin.ModelAdmin):
    list_display = models.Countries.DisplayFields
    search_fields = models.Countries.SearchableFields
    list_filter = models.Countries.FilterFields


@admin.register(models.Cities)
class Cities(admin.ModelAdmin):
    list_display = models.Cities.DisplayFields
    search_fields = models.Cities.SearchableFields
    list_filter = models.Cities.FilterFields


@admin.register(models.Tournament)
class Tournament(admin.ModelAdmin):
    list_display = models.Tournament.DisplayFields
    search_fields = models.Tournament.SearchableFields
    list_filter = models.Tournament.FilterFields


@admin.register(models.Gallery)
class Gallery(admin.ModelAdmin):
    list_display = models.Gallery.DisplayFields
    search_fields = models.Gallery.SearchableFields
    list_filter = models.Gallery.FilterFields


@admin.register(models.News)
class News(admin.ModelAdmin):
    list_display = models.News.DisplayFields
    search_fields = models.News.SearchableFields
    list_filter = models.News.FilterFields
