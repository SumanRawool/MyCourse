# Generated by Django 4.1.3 on 2022-11-22 09:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0003_video'),
    ]

    operations = [
        migrations.AlterField(
            model_name='learning',
            name='description',
            field=models.CharField(max_length=200),
        ),
        migrations.AlterField(
            model_name='prerequisite',
            name='description',
            field=models.CharField(max_length=200),
        ),
        migrations.AlterField(
            model_name='tag',
            name='description',
            field=models.CharField(max_length=200),
        ),
    ]
