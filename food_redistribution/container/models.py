from django.db import models

# Create your models here.
class Container(models.Model):
    container_id = models.AutoField(primary_key=True)
    container_name = models.CharField(max_length=30)
    phone = models.CharField(max_length=10)
    location = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'container'
