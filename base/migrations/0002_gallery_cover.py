# Generated by Django 4.2.16 on 2024-10-14 19:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='gallery',
            name='cover',
            field=models.ImageField(blank=True, default='item2.jpg', null=True, upload_to='gallery/covers'),
        ),
    ]
