from django.db import models

# Create your models here.
class Task(models.Model):
    text = models.CharField(max_length=512, default='')

    done = models.BooleanField(default=False)
    published_date = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.title
