# Generated by Django 5.1.5 on 2025-02-01 00:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("beb", "0010_rename_descrisione_links_descrizione"),
    ]

    operations = [
        migrations.AddField(
            model_name="links",
            name="descrisione",
            field=models.CharField(default=" ", max_length=512),
        ),
    ]
