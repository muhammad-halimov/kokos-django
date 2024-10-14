# Generated by Django 4.2.16 on 2024-10-14 13:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0001_initial'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Staff',
            new_name='AdministrativeStaff',
        ),
        migrations.RenameModel(
            old_name='StaffType',
            new_name='AdministrativeStaffType',
        ),
        migrations.AlterModelOptions(
            name='gallery',
            options={'ordering': ['id', 'created'], 'verbose_name': 'Gallery', 'verbose_name_plural': 'Galleries'},
        ),
        migrations.RenameField(
            model_name='team',
            old_name='staff',
            new_name='administrative_staff',
        ),
        migrations.RemoveField(
            model_name='gallery',
            name='media_links',
        ),
        migrations.RemoveField(
            model_name='gallery',
            name='teams',
        ),
        migrations.RemoveField(
            model_name='gallery',
            name='tournament',
        ),
        migrations.RemoveField(
            model_name='media',
            name='link',
        ),
        migrations.RemoveField(
            model_name='team',
            name='breeding_service',
        ),
        migrations.RemoveField(
            model_name='team',
            name='directors',
        ),
        migrations.RemoveField(
            model_name='team',
            name='football_players',
        ),
        migrations.AddField(
            model_name='gallery',
            name='media',
            field=models.ManyToManyField(blank=True, related_name='gallery_midea', to='base.media'),
        ),
        migrations.AddField(
            model_name='media',
            name='source',
            field=models.ImageField(blank=True, default='default.svg', null=True, upload_to='media'),
        ),
        migrations.AddField(
            model_name='team',
            name='footballers',
            field=models.ManyToManyField(blank=True, related_name='team_footballers', to='base.footballer'),
        ),
    ]
