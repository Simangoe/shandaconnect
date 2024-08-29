from django.db import models

# Create your models here.
class Job(models.Model):
    artisan         = models.CharField(max_length=30)
    mode_of_work    = models.TextField(blank=True, null=False) 
    location        = models.TextField()
    price           = models.DecimalField(decimal_places=2, max_digits=100000)
    description     = models.TextField()
    created         = models.DateTimeField(auto_now_add=True)

    #def __str__(self):
    #    return self.artisan, self.mode_of_work, self.location, self.price, self.description
    
    class Meta:
        ordering = ['-created']
