# -*- coding: utf-8 -*-
# Generated by Django 1.10b1 on 2017-03-09 13:06
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('MobSF', '0003_recentscansdb_userid'),
    ]

    operations = [
        migrations.AlterUniqueTogether(
            name='recentscansdb',
            unique_together=set([('NAME', 'userID')]),
        ),
    ]
