# Generated by Django 4.2.16 on 2024-10-14 20:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0002_gallery_cover'),
    ]

    operations = [
        migrations.AddField(
            model_name='gallery',
            name='description',
            field=models.TextField(blank=True, default='Gallery #<built-in function id> description', null=True),
        ),
        migrations.AddField(
            model_name='gallery',
            name='title',
            field=models.CharField(blank=True, default='Gallery #<built-in function id>', max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='gallery',
            name='cover',
            field=models.ImageField(blank=True, default='cover.jpg', null=True, upload_to='gallery/covers'),
        ),
        migrations.AlterField(
            model_name='news',
            name='cover',
            field=models.ImageField(blank=True, default='cover.jpg', upload_to='news/covers'),
        ),
    ]
