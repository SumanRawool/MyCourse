# Generated by Django 4.1.3 on 2022-11-24 05:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0004_alter_learning_description_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='slug',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='course',
            name='name',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='video',
            name='video_id',
            field=models.CharField(max_length=100),
        ),
    ]
