# Generated by Django 3.2 on 2023-08-24 04:44

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='danhmucsanpham',
            options={'verbose_name': 'Danh mục sản phẩm', 'verbose_name_plural': 'Danh mục sản phẩm'},
        ),
        migrations.AlterModelOptions(
            name='loaisanpham',
            options={'verbose_name': 'Loại sản phẩm', 'verbose_name_plural': 'Loại sản phẩm'},
        ),
        migrations.AlterModelOptions(
            name='sanpham',
            options={'verbose_name': 'Sản phẩm', 'verbose_name_plural': 'Sản phẩm'},
        ),
    ]
