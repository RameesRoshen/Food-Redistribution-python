from django.db import models

# Create your models here.
class Inmates(models.Model):
    inmates_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=20)
    address = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'inmates'
