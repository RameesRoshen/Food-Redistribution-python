from django.db import models
from user_reg.models import UserReg

# Create your models here.
class Complaint(models.Model):
    complaint_id = models.AutoField(primary_key=True)
    complaint = models.CharField(max_length=100)
    # user_id = models.IntegerField()
    user=models.ForeignKey(UserReg, to_field='user_id', on_delete=models.CASCADE)
    reply = models.CharField(max_length=50)
    date = models.DateField()
    time = models.TimeField()

    class Meta:
        managed = False
        db_table = 'complaint'
