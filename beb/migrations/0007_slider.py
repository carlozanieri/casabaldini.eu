# Generated by Django 5.1.4 on 2025-01-06 00:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("beb", "0006_remove_entrieshome_html2_remove_entrieshome_html3_and_more"),
    ]

    operations = [
        migrations.CreateModel(
            name="slider",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("codice", models.CharField(max_length=24)),
                ("img", models.CharField(max_length=100)),
                ("titolo", models.CharField(max_length=64)),
                ("caption", models.CharField(max_length=512)),
                ("link", models.CharField(max_length=512)),
            ],
        ),
    ]