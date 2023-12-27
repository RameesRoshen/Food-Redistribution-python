from django.db import models

# Create your models here.
class FoodReport(models.Model):
    report_id = models.AutoField(primary_key=True)
    item_name = models.CharField(max_length=30)
    quantity = models.IntegerField()
    org_name = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'food_report'