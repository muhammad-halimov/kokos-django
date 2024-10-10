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
    
@admin.register(models.Age_category)
class Age_category(admin.ModelAdmin):
    list_display = models.Age_category.DisplayFields
    search_fields = models.Age_category.SearchableFields
    list_filter = models.Age_category.FilterFields

@admin.register(models.Colour)
class Colour(admin.ModelAdmin):
    list_display = models.Colour.DisplayFields
    search_fields = models.Colour.SearchableFields
    list_filter = models.Colour.FilterFields

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

@admin.register(models.Clothes_type)
class Clothes_type(admin.ModelAdmin):
    list_display = models.Clothes_type.DisplayFields
    search_fields = models.Clothes_type.SearchableFields
    list_filter = models.Clothes_type.FilterFields

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

@admin.register(models.Footballer_position)
class Footballer_position(admin.ModelAdmin):
    list_display = models.Footballer_position.DisplayFields
    search_fields = models.Footballer_position.SearchableFields
    list_filter = models.Footballer_position.FilterFields

@admin.register(models.Footballer)
class Footballer(admin.ModelAdmin):
    list_display = models.Footballer.DisplayFields
    search_fields = models.Footballer.SearchableFields
    list_filter = models.Footballer.FilterFields

@admin.register(models.Director_type)
class Director_type(admin.ModelAdmin):
    list_display = models.Director_type.DisplayFields
    search_fields = models.Director_type.SearchableFields
    list_filter = models.Director_type.FilterFields

@admin.register(models.Director)
class Director(admin.ModelAdmin):
    list_display = models.Director.DisplayFields
    search_fields = models.Director.SearchableFields
    list_filter = models.Director.FilterFields

@admin.register(models.Coach_staff_type)
class Coach_staff_type(admin.ModelAdmin):
    list_display = models.Coach_staff_type.DisplayFields
    search_fields = models.Coach_staff_type.SearchableFields
    list_filter = models.Coach_staff_type.FilterFields

@admin.register(models.Coach_staff)
class Coach_staff(admin.ModelAdmin):
    list_display = models.Coach_staff.DisplayFields
    search_fields = models.Coach_staff.SearchableFields
    list_filter = models.Coach_staff.FilterFields

@admin.register(models.Breeding_service_type)
class Breeding_service_type(admin.ModelAdmin):
    list_display = models.Breeding_service_type.DisplayFields
    search_fields = models.Breeding_service_type.SearchableFields
    list_filter = models.Breeding_service_type.FilterFields

@admin.register(models.Breeding_service)
class Breeding_service(admin.ModelAdmin):
    list_display = models.Breeding_service.DisplayFields
    search_fields = models.Breeding_service.SearchableFields
    list_filter = models.Breeding_service.FilterFields

@admin.register(models.Staff_type)
class Staff_type(admin.ModelAdmin):
    list_display = models.Staff_type.DisplayFields
    search_fields = models.Staff_type.SearchableFields
    list_filter = models.Staff_type.FilterFields

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

@admin.register(models.Ticket_place)
class Ticket_place(admin.ModelAdmin):
    list_display = models.Ticket_place.DisplayFields
    search_fields = models.Ticket_place.SearchableFields
    list_filter = models.Ticket_place.FilterFields

@admin.register(models.Ticket)
class Ticket(admin.ModelAdmin):
    list_display = models.Ticket.DisplayFields
    search_fields = models.Ticket.SearchableFields
    list_filter = models.Ticket.FilterFields

@admin.register(models.City)
class City(admin.ModelAdmin):
    list_display = models.City.DisplayFields
    search_fields = models.City.SearchableFields
    list_filter = models.City.FilterFields

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
