from django.db import models

# Create your models here.
class OrganizationReg(models.Model):
    org_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=30)
    location = models.CharField(max_length=50)
    phone = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'organization_reg'

