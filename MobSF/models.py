from django.db import models
from django.utils.encoding import python_2_unicode_compatible


@python_2_unicode_compatible
class RecentScansDB(models.Model):
    NAME = models.TextField()
    MD5 = models.CharField(max_length=32)
    URL = models.TextField()
    TS = models.DateTimeField()
    userID = models.TextField()

    def __str__(self):
        return self.NAME
   
    class Meta:
        unique_together = (("NAME", "userID"),)
