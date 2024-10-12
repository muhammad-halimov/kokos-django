from django.contrib.auth.models import AbstractUser
from django.db import models


# Модель пользователя, наследующая от AbstractUser
class User(AbstractUser):
    username = models.CharField(max_length=255, null=True, blank=True)
    surname = models.CharField(max_length=255, null=True, blank=True)
    email = models.EmailField(max_length=255, unique=True, null=True, blank=True)
    phone = models.CharField(max_length=255, null=True, blank=True)
    login = models.CharField(max_length=255, null=True, blank=True)
    avatar = models.ImageField(upload_to='avatars', default='assets/img/icons/avatar.svg', null=True, blank=True)

    # Поля даты создания и обновления
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    # Настройки отображения, поиска и фильтрации в админке
    DisplayFields = ['id', 'username', 'surname', 'email', 'phone', 'login', 'avatar', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    # Установка поля email как основного идентификатора пользователя
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username']

    # Метакласс и свод правил отображения в Админке по умолчанию
    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'User'
        verbose_name_plural = 'Users'

    # Представление модели в Админке
    def __str__(self):
        return self.email


# Модель пунктов в хеддере
class HeaderModel(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)
    url = models.CharField(max_length=255, blank=True, null=True)

    # Поля даты создания и обновления
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    # Настройки отображения, поиска и фильтрации в админке
    DisplayFields = ['id', 'title', 'url', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    # Метакласс и свод правил отображения в Админке по умолчанию
    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Header Link'
        verbose_name_plural = 'Header Links'

    # Представление модели в Админке
    def __str__(self):
        return self.title


class AgeCategory(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Age category'
        verbose_name_plural = 'Age categories'

    def __str__(self):
        return self.title


class Color(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Color'
        verbose_name_plural = 'Colors'

    def __str__(self):
        return self.title


class Season(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Season'
        verbose_name_plural = 'Seasons'

    def __str__(self):
        return self.title


class Material(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Material'
        verbose_name_plural = 'Materials'

    def __str__(self):
        return self.title


class ClothesType(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Clothes type'
        verbose_name_plural = 'Clothes types'

    def __str__(self):
        return self.title


class Size(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Size'
        verbose_name_plural = 'Sizes'

    def __str__(self):
        return self.title


class Brand(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Brand'
        verbose_name_plural = 'Brands'

    def __str__(self):
        return self.title


class Gender(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Gender'
        verbose_name_plural = 'Genders'

    def __str__(self):
        return self.title


class Media(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)
    image = models.ImageField(default='img/icons/random.svg', null=True, blank=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Media'
        verbose_name_plural = 'Media'

    def __str__(self):
        return self.title


class Clothes(models.Model):
    type = models.ForeignKey(ClothesType, on_delete=models.CASCADE, blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    age_category = models.ForeignKey(AgeCategory, on_delete=models.CASCADE, null=True, blank=True)
    price = models.DecimalField(decimal_places=2, max_digits=10, null=True, blank=True)
    size = models.ForeignKey(Size, on_delete=models.CASCADE, null=True, blank=True)
    brand = models.ForeignKey(Brand, on_delete=models.CASCADE, null=True, blank=True)
    gender = models.ForeignKey(Gender, on_delete=models.CASCADE, null=True, blank=True)
    color = models.ForeignKey(Color, on_delete=models.CASCADE, null=True, blank=True)
    season = models.ForeignKey(Season, on_delete=models.CASCADE, null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    media_links = models.ManyToManyField(Media, related_name='clothes_media_links', blank=True)
    remaining_number = models.DecimalField(decimal_places=2, max_digits=10, null=True, blank=True)
    discount = models.DecimalField(decimal_places=2, max_digits=10, null=True, blank=True)
    materials = models.ManyToManyField(Material, related_name='materials', blank=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = [
        'id',
        'type',
        'name',
        'age_category',
        'price',
        'size',
        'brand',
        'gender',
        'color',
        'season',
        'description',
        'remaining_number',
        'discount',
        'created',
        'updated'
    ]

    SearchableFields = DisplayFields

    FilterFields = [
        'type',
        'age_category',
        'price',
        'size',
        'brand',
        'gender',
        'color',
        'season',
        'remaining_number',
        'discount',
        'created',
        'updated'
    ]

    class Meta:
        ordering = ['id', 'price', 'discount', '-updated']
        verbose_name = 'Clothes'
        verbose_name_plural = 'Clothes'

    def __str__(self):
        return self.name or self.type


class FootballerPosition(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Footballer position'
        verbose_name_plural = 'Footballer positions'

    def __str__(self):
        return self.title


class Footballer(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    surname = models.CharField(max_length=255, blank=True, null=True)
    patronymic = models.CharField(max_length=255, blank=True, null=True)
    age = models.DecimalField(decimal_places=2, max_digits=3, null=True, blank=True)
    weight = models.DecimalField(decimal_places=2, max_digits=3, null=True, blank=True)

    image = models.ManyToManyField(
        Media,
        related_name='footballer_images',
        blank=True
    )

    position = models.ForeignKey(
        FootballerPosition,
        on_delete=models.CASCADE,
        related_name='footballer_position',
        null=True,
        blank=True
    )

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'name', 'surname', 'patronymic', 'age', 'weight', 'position', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated', 'age', 'weight', 'position']

    class Meta:
        ordering = ['id', 'created', 'age', 'position']
        verbose_name = 'Footballer'
        verbose_name_plural = 'Footballers'

    def __str__(self):
        return self.name or self.surname


class DirectorType(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Director type'
        verbose_name_plural = 'Director types'

    def __str__(self):
        return self.title


class Director(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    surname = models.CharField(max_length=255, blank=True, null=True)
    patronymic = models.CharField(max_length=255, blank=True, null=True)
    age = models.DecimalField(decimal_places=2, max_digits=10, null=True, blank=True)
    work_experience = models.DecimalField(decimal_places=2, max_digits=10, null=True, blank=True)
    type_director = models.ManyToManyField(DirectorType, related_name='_director_type', blank=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'name', 'surname', 'patronymic', 'age', 'work_experience', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated', 'age', 'work_experience']

    class Meta:
        ordering = ['id', 'created', '-updated', 'age', 'work_experience']
        verbose_name = 'Director'
        verbose_name_plural = 'Directors'

    def __str__(self):
        return self.name or self.surname


class CoachStaffType(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id','title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created', '-updated']
        verbose_name = 'Coach staff type'
        verbose_name_plural = 'Coach staff types'

    def __str__(self):
        return self.title


class CoachStaff(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    surname = models.CharField(max_length=255, blank=True, null=True)
    patronymic = models.CharField(max_length=255, blank=True, null=True)
    age = models.DecimalField(decimal_places=2, max_digits=10, null=True, blank=True)
    work_experience = models.DecimalField(decimal_places=2, max_digits=10, null=True, blank=True)
    type_coach = models.ManyToManyField(CoachStaffType, related_name='coach_staff_type', blank=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'name', 'surname', 'patronymic', 'age', 'work_experience', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated', 'age', 'work_experience']

    class Meta:
        ordering = ['id', 'created', '-updated', 'age', 'work_experience']
        verbose_name = 'Coach staff'
        verbose_name_plural = 'Coach staff'

    def __str__(self):
        return self.name or self.surname


class BreedingServiceType(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created', '-updated']
        verbose_name = 'Breeding service type'
        verbose_name_plural = 'Breeding service types'

    def __str__(self):
        return self.title


class BreedingService(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    surname = models.CharField(max_length=255, blank=True, null=True)
    patronymic = models.CharField(max_length=255, blank=True, null=True)
    age = models.DecimalField(decimal_places=2, max_digits=3, null=True, blank=True)
    work_experience = models.DecimalField(decimal_places=2, max_digits=3, null=True, blank=True)
    type_service = models.ManyToManyField(BreedingServiceType, related_name='type', blank=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'name', 'surname', 'patronymic', 'age', 'work_experience', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated', 'age', 'work_experience']

    class Meta:
        ordering = ['id', 'created', '-updated', 'age', 'work_experience']
        verbose_name = 'Breeding service'
        verbose_name_plural = 'Breeding services'

    def __str__(self):
        return self.name or self.surname


class StaffType(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created', '-updated']
        verbose_name = 'Staff type'
        verbose_name_plural = 'Staff types'

    def __str__(self):
        return self.title


class Staff(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    surname = models.CharField(max_length=255, blank=True, null=True)
    patronymic = models.CharField(max_length=255, blank=True, null=True)
    age = models.DecimalField(decimal_places=2, max_digits=3, null=True, blank=True)
    work_experience = models.DecimalField(decimal_places=2, max_digits=3, null=True, blank=True)
    type_staff = models.ManyToManyField(StaffType, related_name='staff_type', blank=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'name', 'surname', 'patronymic', 'age', 'work_experience', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated', 'age', 'work_experience']

    class Meta:
        ordering = ['id', 'created', '-updated', 'age', 'work_experience']
        verbose_name = 'Staff'
        verbose_name_plural = 'Staffs'

    def __str__(self):
        return self.name or self.surname


class Team(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)
    football_players = models.ManyToManyField(Footballer, related_name='football_players', blank=True)
    directors = models.ManyToManyField(Director, related_name='team_directors', blank=True)
    coach_staff = models.ManyToManyField(CoachStaff, related_name='team_coach_staff', blank=True)
    breeding_service = models.ManyToManyField(BreedingService, related_name='team_breeding_service', blank=True)
    staff = models.ManyToManyField(Staff, related_name='team_staff', blank=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated', 'title']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created', '-updated']
        verbose_name = 'Team'
        verbose_name_plural = 'Teams'

    def __str__(self):
        return self.title


class Cities(models.Model):
    city = models.CharField(max_length=255, blank=True, null=True)
    date = models.DateField(auto_now=True, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'city', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'City'
        verbose_name_plural = 'Cities'

    def __str__(self):
        return self.city


class Countries(models.Model):
    country = models.CharField(max_length=255, blank=True, null=True)
    cities = models.ManyToManyField(Cities, related_name='city_coutry_belongs')
    date = models.DateField(auto_now=True, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'country', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Country'
        verbose_name_plural = 'Countries'

    def __str__(self):
        return self.country


class Arena(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    # Первое внешнее поле ключа: связано с полем 'country' модели CitiesAndCountries
    country = models.ForeignKey(Countries, on_delete=models.SET_NULL, null=True, related_name='country_arenas')
    # Второе внешнее поле ключа: связано с полем 'city' модели CitiesAndCountries
    city = models.ForeignKey(Cities, on_delete=models.SET_NULL, null=True, related_name='city_arenas')
    street = models.CharField(max_length=255, blank=True, null=True)
    places_count = models.DecimalField(decimal_places=2, max_digits=10, null=True, blank=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'created', 'updated', 'name', 'country', 'city', 'street', 'places_count']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated', 'country', 'places_count']

    class Meta:
        ordering = ['id', 'created', '-updated', 'places_count']
        verbose_name = 'Arena'
        verbose_name_plural = 'Arenas'

    def __str__(self):
        return self.name



class Outcome(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Outcome'
        verbose_name_plural = 'Outcomes'

    def __str__(self):
        return self.title


class Match(models.Model):
    tour = models.DecimalField(decimal_places=2, max_digits=10, null=True, blank=True)
    arena = models.ForeignKey(Arena, on_delete=models.CASCADE, blank=True, null=True)
    teams = models.ManyToManyField(Team, related_name='match_teams', blank=True)
    date = models.DateField(auto_now=True, blank=True, null=True)
    outcome = models.ForeignKey(Outcome, on_delete=models.CASCADE, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'created', 'updated', 'date', 'tour', 'arena', 'outcome']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated', 'date']

    class Meta:
        ordering = ['id', 'created', '-updated', 'date']
        verbose_name = 'Match'
        verbose_name_plural = 'Matches'

    def __str__(self):
        return f"Match #{self.id}"


class TicketPlace(models.Model):
    sector = models.DecimalField(decimal_places=2, max_digits=10, null=True, blank=True)
    place = models.DecimalField(decimal_places=2, max_digits=10, null=True, blank=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'created', 'updated', 'sector', 'place']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated', 'sector', 'place']

    class Meta:
        ordering = ['id', 'created', '-updated', 'sector', 'place']
        verbose_name = 'Ticket place'
        verbose_name_plural = 'Ticket places'

    def __str__(self):
        return f'Ticket place #{self.place}'


class Ticket(models.Model):
    price = models.DecimalField(decimal_places=2, max_digits=10, null=True, blank=True)
    match = models.ForeignKey(Match, on_delete=models.CASCADE, blank=True, null=True)
    date = models.DateTimeField(auto_now=True, blank=True, null=True)
    place = models.ForeignKey(TicketPlace, on_delete=models.CASCADE, blank=True, null=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'created', 'updated', 'price', 'match', 'date', 'place']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated', 'price', 'date', 'place']

    class Meta:
        ordering = ['id', 'created', '-updated', 'price', 'date', 'place']
        verbose_name = 'Ticket'
        verbose_name_plural = 'Tickets'

    def __str__(self):
        return f'Ticket #{self.id}'


class Tournament(models.Model):
    matchs = models.ManyToManyField(Match, related_name='matches', blank=True)
    start_date = models.DateField(auto_now=True, null=True, blank=True)
    end_date = models.DateField(auto_now=True, null=True, blank=True)
    tours = models.DecimalField(decimal_places=2, max_digits=10, null=True, blank=True)
    cities = models.ManyToManyField(Cities, related_name='cities', blank=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'created', 'updated', 'start_date', 'end_date', 'tours']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated', 'start_date', 'end_date', 'tours']

    class Meta:
        ordering = ['id', 'created', '-updated', 'start_date', 'end_date', 'tours']
        verbose_name = 'Tournament'
        verbose_name_plural = 'Tournaments'

    def __str__(self):
        return f"Tournament #{self.id}"


class Gallery(models.Model):
    tournament = models.ForeignKey(Tournament, on_delete=models.CASCADE, blank=True, null=True)
    teams = models.ManyToManyField(Team, related_name='teams', blank=True)
    images = models.ManyToManyField(Media, related_name='media_links', blank=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'created', 'updated', 'tournament']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created', '-updated']
        verbose_name = 'Gallery'
        verbose_name_plural = 'Galleries'

    def __str__(self):
        return 'Gallery'


class News(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)
    tags = models.CharField(max_length=255, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    gallery = models.ManyToManyField(Gallery, related_name='news_gallery', blank=True)

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    DisplayFields = ['id', 'created', 'title', 'description']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']

    class Meta:
        ordering = ['id', 'created', '-updated']
        verbose_name = 'News'
        verbose_name_plural = 'News'

    def __str__(self):
        return self.title
