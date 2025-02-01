from django.db import models


class Menuweb(models.Model):
    codice = models.CharField(max_length=20)
    radice = models.CharField(max_length=20)
    livello = models.IntegerField(default=0)
    titolo = models.CharField(max_length=64)
    descrizione = models.CharField(max_length=256)
    link = models.CharField(max_length=512)
    attivo = models.IntegerField(default=0)
    icon = models.CharField(max_length=255)
    workplace = models.IntegerField(default=0)
    param1 = models.CharField(max_length=255)
    ordine = models.IntegerField(default=0)


class Blog(models.Model):
    author_id = models.IntegerField(default=0)
    title = models.CharField(max_length=512)
    markdown = models.CharField(max_length=255)
    html = models.CharField(max_length=512)
    published = models.DateTimeField("date published")
    updated = models.DateTimeField("date published")
    img = models.CharField(max_length=100)
    dir = models.CharField(max_length=100)
    html2 = models.CharField(max_length=255)
    html3 = models.CharField(max_length=255)
    img2 = models.CharField(max_length=100)
    img3 = models.CharField(max_length=100)


class Entries(models.Model):
    author_id = models.IntegerField(default=0)
    slug = models.CharField(max_length=100, default=" ")
    title = models.CharField(max_length=512)
    markdown = models.CharField(max_length=255)
    html = models.CharField(max_length=512)
    published = models.DateTimeField("date published")
    updated = models.DateTimeField("date published")
    img = models.CharField(max_length=100)
    dir = models.CharField(max_length=100)
    html2 = models.CharField(max_length=255)
    html3 = models.CharField(max_length=255)
    img2 = models.CharField(max_length=100)
    img3 = models.CharField(max_length=100)

    def __str__(self):
        return self.title()


class EntriesHome(models.Model):
    author_id = models.IntegerField(default=0)
    slug = models.CharField(max_length=100, default=" ")
    title = models.CharField(max_length=512)
    markdown = models.CharField(max_length=255)
    html = models.CharField(max_length=512)
    published = models.DateTimeField("date published")
    updated = models.DateTimeField("date published")
    img = models.CharField(max_length=100)
    dir = models.CharField(max_length=100)


class Slider(models.Model):
    #ID = models.AutoField(primary_key=True)
    codice = models.CharField(max_length=24)
    img = models.CharField(max_length=100)
    titolo = models.CharField(max_length=64)
    caption = models.CharField(max_length=512)
    link = models.CharField(max_length=512)

    def __str__(self):
        return self.titolo()


class Links(models.Model):
    #ID = models.AutoField(primary_key=True)
    codice = models.CharField(max_length=24)
    img = models.CharField(max_length=100)
    titolo = models.CharField(max_length=64)
    descrizione = models.CharField(max_length=512)
    descrisione = models.CharField(max_length=512, default=" ")
    link = models.CharField(max_length=512)
    attivo = models.IntegerField(default=0)