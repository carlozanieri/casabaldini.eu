# Generated by Django 5.1.4 on 2025-01-05 21:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("beb", "0003_entries"),
    ]

    operations = [
        migrations.AddField(
            model_name="entries",
            name="slug",
            field=models.CharField(default=" ", max_length=100),
        ),
    ]
