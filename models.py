from django.db import models
from django.contrib.auth.models import AbstractUser


# Модель пользователя, наследующая от AbstractUser
class User(AbstractUser):
    username = models.CharField(max_length=255, unique=True, null=True, blank=True)
    surname = models.CharField(max_length=255, unique=True, null=True, blank=True)
    email = models.EmailField(max_length=255, unique=True, null=True, blank=True)
    login = models.CharField(max_length=255, null=True, blank=True)
    phone = models.CharField(max_length=255, null=True, blank=True)
    avatar = models.ImageField(upload_to='avatars', default='assets/img/icons/avatar.svg', null=True, blank=True)

    # Поля даты создания и обновления
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    # Настройки отображения, поиска и фильтрации в админке
    DisplayFields = ['id', 'username', 'email', 'login', 'avatar', 'created', 'updated']
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
    def str(self):
        return self.title

class Age_category(models.Model):
    title = models.CharField(max_length=20)
    
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
    
class Colour(models.Model):
    title = models.CharField(max_length=30)
    
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    
    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']
    
    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'Colour'
        verbose_name_plural = 'Colours'
        
    def __str__(self):
        return self.title

class Season(models.Model):
    title = models.CharField(max_length=20)
    
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
    title = models.CharField(max_length=30)
    
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
        
class Clothes_type(models.Model):
    title = models.CharField(max_length=30)
    
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
    title = models.CharField(max_length=10)
    
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
    title = models.CharField(max_length=10)
    
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
    title = models.CharField(max_length=10)
    
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
    title = models.CharField(max_length=10, null=True, blank=True)
    link = models.TextField()
    date = models.DateField(null=True)
    
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    
    DisplayFields = ['id', 'title', 'link', 'date', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated', 'date']
    
    class Meta:
        ordering = ['id', 'created', 'date']
        verbose_name = 'Media'
        verbose_name_plural = 'Medies'
    
    def __str__(self):
        return self.title
    
class Clothes(models.Model):
    type = models.ForeignKey(Clothes_type, on_delete=models.CASCADE)
    name = models.CharField(max_length=40)
    age_category = models.ForeignKey(Age_category, on_delete=models.CASCADE, null=True, blank=True)
    price = models.FloatField(null=True, blank=True)
    size = models.IntegerField(null=True, blank=True)
    brand = models.ForeignKey(Brand, on_delete=models.CASCADE, null=True, blank=True)
    gender = models.ForeignKey(Gender, on_delete=models.CASCADE, null=True, blank=True)
    colour = models.ForeignKey(Colour, on_delete=models.CASCADE, null=True, blank=True)
    season = models.ForeignKey(Season, on_delete=models.CASCADE, null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    media_links = models.ManyToManyField(Media, related_name='clothes_media_links')
    remainig_number = models.IntegerField(null=True, blank=True)
    discount = models.FloatField(null=True, blank=True)
    materials = models.ManyToManyField(Material, related_name='materials')
    
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    
    DisplayFields = [
        'id', 'type', 'name', 'age_category', 'price', 'size', 'brand', 'gender', 'colour',
        'season', 'description', 'remainig_number', 'discount', 'created', 'updated'
        ]
    SearchableFields = DisplayFields
    FilterFields = [
        'type', 'age_category', 'price', 'size', 'brand', 'gender', 'colour', 'season',
        'remainig_number', 'discount', 'created', 'updated'
        ]
    
    class Meta:
        ordering = ['id', 'price', 'discount', '-updated']
        verbose_name = 'Clothes'
        verbose_name_plural = 'Clothes'
    
    def __str__(self):
        return self.name or self.type

class Footballer_position(models.Model):
    title = models.CharField(max_length=20)
    
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

# class Footballer_statistic: 
    

class Footballer(models.Model):
    name = models.CharField(max_length=20, null=True, blank=True)
    surname = models.CharField(max_length=20, null=True, blank=True)
    patronymic = models.CharField(max_length=20, blank=True, null=True)
    age = models.IntegerField(null=True, blank=True)
    weight = models.FloatField(null=True, blank=True)
    image = models.ManyToManyField(Media, related_name='footballer_images')
    position = models.ForeignKey(Footballer_position, on_delete=models.CASCADE, related_name='footballer_position', null=True, blank=True)
    # statistic = models.ForeignKey(Footballer_statistic, on_delete=models.CASCADE, related_name='footballer_statistic')
    
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    
    DisplayFields = ['id', 'name', 'surname', 'patronymic', 'age', 'weight', 'position' 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated', 'age', 'weight', 'position']
    
    class Meta:
        ordering = ['id', 'created', 'age', 'position']
        verbose_name = 'Footballer position'
        verbose_name_plural = 'Footballer positions'
    
    def __str__(self):
        return self.name or self.surname

class Director_type(models.Model):
    title = models.CharField(max_length=40)
    
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
    name = models.CharField(max_length=20, null=True, blank=True)
    surname = models.CharField(max_length=20, null=True, blank=True)
    patronymic = models.CharField(max_length=20, blank=True, null=True)
    age = models.IntegerField(null=True, blank=True)
    work_experience = models.IntegerField(null=True, blank=True)
    type = models.ManyToManyField(Director_type, related_name='_director_type')
    
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

class Coach_staff_type(models.Model):
    title = models.CharField(max_length=40)
    
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
    
class Coach_staff(models.Model):
    name = models.CharField(max_length=20, blank=True, null=True)
    surname = models.CharField(max_length=20, null=True, blank=True)
    patronymic = models.CharField(max_length=20, blank=True, null=True)
    age = models.IntegerField(null=True, blank=True)
    work_experience = models.IntegerField(null=True, blank=True)
    type = models.ManyToManyField(Coach_staff_type, related_name='_coach_staff_type')
    
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    
    DisplayFields = ['id', 'name', 'surname', 'patronymic', 'age', 'work_experience', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated', 'age', 'work_experience']
    
    class Meta:
        ordering = ['id', 'created', '-updated', 'age', 'work_experience']
        verbose_name = 'Coach staff'
        verbose_name_plural = 'Coach staffs'
    
    def __str__(self):
        return self.name or self.surname

class Breeding_service_type(models.Model):
    title = models.CharField(max_length=40)
    
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

class Breeding_service(models.Model):
    name = models.CharField(max_length=20, blank=True, null=True)
    surname = models.CharField(max_length=20, blank=True, null=True)
    patronymic = models.CharField(max_length=20, blank=True, null=True)
    age = models.IntegerField(blank=True, null=True)
    work_experience = models.IntegerField(blank=True, null=True)
    type = models.ManyToManyField(Breeding_service_type, related_name='type')
    
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

class Staff_type(models.Model):
    title = models.CharField(max_length=40)
    
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
    name = models.CharField(max_length=20)
    surname = models.CharField(max_length=20)
    patronymic = models.CharField(max_length=20, blank=True, null=True)
    age = models.IntegerField(blank=True)
    work_experience = models.IntegerField(blank=True)
    type = models.ManyToManyField(Staff_type, related_name='_staff_type')
    
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

# class Team_statistic:

class Team(models.Model):
    title = models.CharField(max_length=30, blank=True, null=True)
    football_players = models.ManyToManyField(Footballer)
    directors = models.ManyToManyField(Director, related_name='team_directors')
    coach_staff = models.ManyToManyField(Coach_staff, related_name='team_coach_staff')
    breeding_service = models.ManyToManyField(Breeding_service, related_name='team_breeding_service')
    staff = models.ManyToManyField(Staff, related_name='team_staff')
    # statistic = models.ManyToManyField(Team_statistic, related_name='team_statistic')
    
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    
    DisplayFields = ['id', 'created', 'updated', 'title']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']
    
    class Meta:
        ordering = ['id', 'created', '-updated']
        verbose_name = 'Team'
        verbose_name_plural = 'Teams'
    
    def __str__(self):
        return self.title
    
class Arena(models.Model):
    name = models.CharField(max_length=30)
    country = models.CharField(max_length=30)
    city = models.CharField(max_length=30)
    street = models.CharField(max_length=30)
    places_count = models.IntegerField(blank=True)
    
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

# class Match_statistic:
    
class Outcome(models.Model):
    title = models.CharField(max_length=10, null=True, blank=True)
    
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
    date = models.DateTimeField()
    tour = models.IntegerField(blank=True, null=True)
    arena = models.ForeignKey(Arena, on_delete=models.CASCADE)
    teams = models.ManyToManyField(Team, related_name='match_teams')
    # statistic = models.ForeignKey(Match_statistic, on_delete=models.CASCADE)
    outcome = models.ForeignKey(Outcome, on_delete=models.CASCADE)
    
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
        return 'Match'

class Ticket_place(models.Model):
    sector = models.IntegerField()
    place = models.IntegerField()
    
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
        return 'Ticket place'
    
class Ticket(models.Model):
    price = models.FloatField()
    match = models.ForeignKey(Match, on_delete=models.CASCADE)
    date = models.DateTimeField()
    place = models.ForeignKey(Ticket_place, on_delete=models.CASCADE)
    
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
        return 'Ticket'

class City(models.Model):
    title = models.CharField(max_length=10, null=True, blank=True)
    link = models.TextField()
    date = models.DateField()
    
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    
    DisplayFields = ['id', 'title', 'created', 'updated']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']
    
    class Meta:
        ordering = ['id', 'created']
        verbose_name = 'City'
        verbose_name_plural = 'Cities'
    
    def __str__(self):
        return self.title

class Tournament(models.Model):
    matchs = models.ManyToManyField(Match, related_name='matches')
    start_date = models.DateField()
    end_date = models.DateField(blank=True)
    tours = models.IntegerField()
    cities = models.ManyToManyField(City, related_name='cities')
    
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
        return 'Tournament'

class Gallery(models.Model):
    tournament = models.ForeignKey(Tournament, on_delete=models.CASCADE)
    teams = models.ManyToManyField(Team, related_name='teams', blank=True) #TEAM
    media_links = models.ManyToManyField(Media, related_name='media_links')
    
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
    date = models.DateField()
    title = models.CharField(max_length=30)
    description = models.TextField(blank=True)
    gallery = models.ManyToManyField(Gallery, related_name='news_gallery')
    
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    
    DisplayFields = ['id', 'created', 'title', 'date', 'description']
    SearchableFields = DisplayFields
    FilterFields = ['created', 'updated']
    
    class Meta:
        ordering = ['id', 'created', '-updated', 'date']
        verbose_name = 'News'
        verbose_name_plural = 'Newses'
    
    def __str__(self):
        return self.title
