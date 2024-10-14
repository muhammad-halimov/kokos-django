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
class AgeCategoryAdmin(admin.ModelAdmin):
    list_display = models.AgeCategory.DisplayFields
    search_fields = models.AgeCategory.SearchableFields
    list_filter = models.AgeCategory.FilterFields


@admin.register(models.Color)
class ColorAdmin(admin.ModelAdmin):
    list_display = models.Color.DisplayFields
    search_fields = models.Color.SearchableFields
    list_filter = models.Color.FilterFields


@admin.register(models.Season)
class SeasonAdmin(admin.ModelAdmin):
    list_display = models.Season.DisplayFields
    search_fields = models.Season.SearchableFields
    list_filter = models.Season.FilterFields


@admin.register(models.Material)
class MaterialAdmin(admin.ModelAdmin):
    list_display = models.Material.DisplayFields
    search_fields = models.Material.SearchableFields
    list_filter = models.Material.FilterFields


@admin.register(models.ClothesType)
class ClothesTypeAdmin(admin.ModelAdmin):
    list_display = models.ClothesType.DisplayFields
    search_fields = models.ClothesType.SearchableFields
    list_filter = models.ClothesType.FilterFields


@admin.register(models.Size)
class SizeAdmin(admin.ModelAdmin):
    list_display = models.Size.DisplayFields
    search_fields = models.Size.SearchableFields
    list_filter = models.Size.FilterFields


@admin.register(models.Brand)
class BrandAdmin(admin.ModelAdmin):
    list_display = models.Brand.DisplayFields
    search_fields = models.Brand.SearchableFields
    list_filter = models.Brand.FilterFields


@admin.register(models.Gender)
class GenderAdmin(admin.ModelAdmin):
    list_display = models.Gender.DisplayFields
    search_fields = models.Gender.SearchableFields
    list_filter = models.Gender.FilterFields


@admin.register(models.Media)
class MediaAdmin(admin.ModelAdmin):
    list_display = models.Media.DisplayFields
    search_fields = models.Media.SearchableFields
    list_filter = models.Media.FilterFields


@admin.register(models.Clothes)
class ClothesAdmin(admin.ModelAdmin):
    list_display = models.Clothes.DisplayFields
    search_fields = models.Clothes.SearchableFields
    list_filter = models.Clothes.FilterFields


@admin.register(models.FootballerPosition)
class FootballerPositionAdmin(admin.ModelAdmin):
    list_display = models.FootballerPosition.DisplayFields
    search_fields = models.FootballerPosition.SearchableFields
    list_filter = models.FootballerPosition.FilterFields


@admin.register(models.Footballer)
class FootballerAdmin(admin.ModelAdmin):
    list_display = models.Footballer.DisplayFields
    search_fields = models.Footballer.SearchableFields
    list_filter = models.Footballer.FilterFields


@admin.register(models.DirectorType)
class DirectorTypeAdmin(admin.ModelAdmin):
    list_display = models.DirectorType.DisplayFields
    search_fields = models.DirectorType.SearchableFields
    list_filter = models.DirectorType.FilterFields


@admin.register(models.Director)
class DirectorAdmin(admin.ModelAdmin):
    list_display = models.Director.DisplayFields
    search_fields = models.Director.SearchableFields
    list_filter = models.Director.FilterFields


@admin.register(models.CoachStaffType)
class CoachStaffTypeAdmin(admin.ModelAdmin):
    list_display = models.CoachStaffType.DisplayFields
    search_fields = models.CoachStaffType.SearchableFields
    list_filter = models.CoachStaffType.FilterFields


@admin.register(models.CoachStaff)
class CoachStaffAdmin(admin.ModelAdmin):
    list_display = models.CoachStaff.DisplayFields
    search_fields = models.CoachStaff.SearchableFields
    list_filter = models.CoachStaff.FilterFields


@admin.register(models.BreedingServiceType)
class BreedingServiceTypeAdmin(admin.ModelAdmin):
    list_display = models.BreedingServiceType.DisplayFields
    search_fields = models.BreedingServiceType.SearchableFields
    list_filter = models.BreedingServiceType.FilterFields


@admin.register(models.BreedingService)
class BreedingServiceAdmin(admin.ModelAdmin):
    list_display = models.BreedingService.DisplayFields
    search_fields = models.BreedingService.SearchableFields
    list_filter = models.BreedingService.FilterFields


@admin.register(models.StaffType)
class StaffTypeAdmin(admin.ModelAdmin):
    list_display = models.StaffType.DisplayFields
    search_fields = models.StaffType.SearchableFields
    list_filter = models.StaffType.FilterFields


@admin.register(models.Staff)
class StaffAdmin(admin.ModelAdmin):
    list_display = models.Staff.DisplayFields
    search_fields = models.Staff.SearchableFields
    list_filter = models.Staff.FilterFields


@admin.register(models.Team)
class TeamAdmin(admin.ModelAdmin):
    list_display = models.Team.DisplayFields
    search_fields = models.Team.SearchableFields
    list_filter = models.Team.FilterFields


@admin.register(models.Arena)
class ArenaAdmin(admin.ModelAdmin):
    list_display = models.Arena.DisplayFields
    search_fields = models.Arena.SearchableFields
    list_filter = models.Arena.FilterFields


@admin.register(models.Outcome)
class OutcomeAdmin(admin.ModelAdmin):
    list_display = models.Outcome.DisplayFields
    search_fields = models.Outcome.SearchableFields
    list_filter = models.Outcome.FilterFields


@admin.register(models.Match)
class MatchAdmin(admin.ModelAdmin):
    list_display = models.Match.DisplayFields
    search_fields = models.Match.SearchableFields
    list_filter = models.Match.FilterFields


@admin.register(models.TicketPlace)
class TicketPlaceAdmin(admin.ModelAdmin):
    list_display = models.TicketPlace.DisplayFields
    search_fields = models.TicketPlace.SearchableFields
    list_filter = models.TicketPlace.FilterFields


@admin.register(models.Ticket)
class TicketAdmin(admin.ModelAdmin):
    list_display = models.Ticket.DisplayFields
    search_fields = models.Ticket.SearchableFields
    list_filter = models.Ticket.FilterFields


@admin.register(models.Country)
class CountryAdmin(admin.ModelAdmin):
    list_display = models.Country.DisplayFields
    search_fields = models.Country.SearchableFields
    list_filter = models.Country.FilterFields


@admin.register(models.Tournament)
class TournamentAdmin(admin.ModelAdmin):
    list_display = models.Tournament.DisplayFields
    search_fields = models.Tournament.SearchableFields
    list_filter = models.Tournament.FilterFields


@admin.register(models.Gallery)
class GalleryAdmin(admin.ModelAdmin):
    list_display = models.Gallery.DisplayFields
    search_fields = models.Gallery.SearchableFields
    list_filter = models.Gallery.FilterFields


@admin.register(models.News)
class NewsAdmin(admin.ModelAdmin):
    list_display = models.News.DisplayFields
    search_fields = models.News.SearchableFields
    list_filter = models.News.FilterFields


@admin.register(models.OwnField)
class OwnFieldAdmin(admin.ModelAdmin):
    list_display = models.OwnField.DisplayFields
    search_fields = models.OwnField.SearchableFields
    list_filter = models.OwnField.FilterFields


@admin.register(models.SomeoneField)
class SomeoneFieldAdmin(admin.ModelAdmin):
    list_display = models.SomeoneField.DisplayFields
    search_fields = models.SomeoneField.SearchableFields
    list_filter = models.SomeoneField.FilterFields


@admin.register(models.NeutralField)
class NeutralFieldAdmin(admin.ModelAdmin):
    list_display = models.NeutralField.DisplayFields
    search_fields = models.NeutralField.SearchableFields
    list_filter = models.NeutralField.FilterFields


@admin.register(models.GeneralStatisticsAll)
class GeneralStatisticsAllAdmin(admin.ModelAdmin):
    list_display = models.GeneralStatisticsAll.DisplayFields
    search_fields = models.GeneralStatisticsAll.SearchableFields
    list_filter = models.GeneralStatisticsAll.FilterFields


@admin.register(models.GeneralStatisticsTournament)
class GeneralStatisticsTournamentAdmin(admin.ModelAdmin):
    list_display = models.GeneralStatisticsTournament.DisplayFields
    search_fields = models.GeneralStatisticsTournament.SearchableFields
    list_filter = models.GeneralStatisticsTournament.FilterFields


@admin.register(models.GoalkeeperStatistics)
class GoalkeeperStatisticsAdmin(admin.ModelAdmin):
    list_display = models.GoalkeeperStatistics.DisplayFields
    search_fields = models.GoalkeeperStatistics.SearchableFields
    list_filter = models.GoalkeeperStatistics.FilterFields


@admin.register(models.FootballerStatistics)
class FootballerStatisticsAdmin(admin.ModelAdmin):
    list_display = models.FootballerStatistics.DisplayFields
    search_fields = models.FootballerStatistics.SearchableFields
    list_filter = models.FootballerStatistics.FilterFields


@admin.register(models.CoachSummaryStatistics)
class CoachSummaryStatisticsAdmin(admin.ModelAdmin):
    list_display = models.CoachSummaryStatistics.DisplayFields
    search_fields = models.CoachSummaryStatistics.SearchableFields
    list_filter = models.CoachSummaryStatistics.FilterFields


@admin.register(models.PenaltyScored)
class PenaltyScoredAdmin(admin.ModelAdmin):
    list_display = models.PenaltyScored.DisplayFields
    search_fields = models.PenaltyScored.SearchableFields
    list_filter = models.PenaltyScored.FilterFields
