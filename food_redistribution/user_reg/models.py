from django.db import models

# Create your models here.
class UserReg(models.Model):
    user_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=20)
    address = models.CharField(max_length=50)
    gender = models.CharField(max_length=10)
    phone = models.IntegerField(db_column='Phone')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'user_reg'
