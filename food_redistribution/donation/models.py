from django.db import models

# Create your models here.
class Donation(models.Model):
    donation_id = models.AutoField(primary_key=True)
    item = models.CharField(max_length=30)
    org_name = models.CharField(max_length=30)
    quantity = models.IntegerField()
    location = models.CharField(max_length=50)
    phone = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'donation'
