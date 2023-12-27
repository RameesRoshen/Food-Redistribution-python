from django.db import models

# Create your models here.
class CharityOrgReg(models.Model):
    org_reg_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=20)
    address = models.CharField(max_length=50)
    location = models.CharField(max_length=50)
    phone = models.IntegerField(db_column='Phone')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'charity_org_reg'
