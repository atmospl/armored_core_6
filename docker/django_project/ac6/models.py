from django.db import models

class Head(models.Model):
    name = models.CharField(max_length=100)
    weight = models.FloatField()
    load = models.FloatField()
    ap = models.IntegerField()
    bullet_defence = models.IntegerField()
    en_defence = models.IntegerField()
    explosion_defence = models.IntegerField()
    stability = models.IntegerField()
    recovery_performance = models.IntegerField()
    price = models.FloatField()
    manufacture = models.CharField(max_length=100)

class Core(models.Model):
    name = models.CharField(max_length=100)
    weight = models.FloatField()
    load = models.FloatField()
    ap = models.IntegerField()
    bullet_defence = models.IntegerField()
    en_defence = models.IntegerField()
    explosion_defence = models.IntegerField()
    stability = models.IntegerField()
    output_correction = models.FloatField()
    price = models.FloatField()
    manufacture = models.CharField(max_length=100)

class Arms(models.Model):
    name = models.CharField(max_length=100)
    weight = models.FloatField()
    load = models.FloatField()
    ap = models.IntegerField()
    bullet_defence = models.IntegerField()
    en_defence = models.IntegerField()
    explosion_defence = models.IntegerField()
    arm_load_capacity = models.FloatField()
    price = models.FloatField()
    manufacture = models.CharField(max_length=100, default='')

class Legs(models.Model):
    name = models.CharField(max_length=100)
    weight = models.FloatField()
    load = models.FloatField(default=0.0)
    ap = models.IntegerField()
    bullet_defence = models.IntegerField()
    en_defence = models.IntegerField()
    explosion_defence = models.IntegerField()
    stability = models.IntegerField()
    leg_load_capacity = models.FloatField()
    price = models.FloatField()
    manufacture = models.CharField(max_length=100, default='')

class FCS(models.Model):
    name = models.CharField(max_length=100)
    weight = models.FloatField()
    load = models.FloatField(default=0.0)
    price = models.FloatField()
    manufacture = models.CharField(max_length=100, default='')

class Booster(models.Model):
    name = models.CharField(max_length=100)
    weight = models.FloatField()
    load = models.FloatField(default=0.0)
    price = models.FloatField()
    manufacture = models.CharField(max_length=100, default='')

class Generator(models.Model):
    name = models.CharField(max_length=100)
    weight = models.FloatField()
    supply = models.FloatField()
    price = models.FloatField()
    manufacture = models.CharField(max_length=100, default='')

class Units(models.Model):
    name = models.CharField(max_length=100)
    weight = models.FloatField()
    load = models.FloatField(default=0.0)
    is_left_arm = models.BooleanField()
    is_right_arm = models.BooleanField()
    is_left_shoulder = models.BooleanField()
    is_right_shoulder = models.BooleanField()
    price = models.FloatField()
    manufacture = models.CharField(max_length=100, default='')