# Generated by Django 3.2.7 on 2021-10-19 09:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portal', '0011_assignemnt_submissions_assignment_model_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assignemnt_submissions',
            name='assignment_submittion_date',
            field=models.CharField(max_length=60),
        ),
    ]
