from django.db import models

# Create your models here.
class Alert(models.Model):
    alert_id = models.AutoField(primary_key=True)
    alert = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'alert'

