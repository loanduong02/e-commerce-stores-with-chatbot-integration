# Generated by Django 3.2 on 2023-09-11 10:40

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('store', '0003_sanpham_spduongdan'),
    ]

    operations = [
        migrations.CreateModel(
            name='KHACHHANG',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('khTen', models.CharField(max_length=256)),
                ('khNgaysinh', models.DateField()),
                ('khDiachi', models.CharField(max_length=256)),
                ('khThanhpho', models.CharField(max_length=256)),
                ('khPhone', models.IntegerField()),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
