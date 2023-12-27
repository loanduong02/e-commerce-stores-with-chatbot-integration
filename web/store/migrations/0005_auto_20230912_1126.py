# Generated by Django 3.2 on 2023-09-12 04:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0004_khachhang'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='khachhang',
            options={'verbose_name': 'Khách hàng', 'verbose_name_plural': 'Khách hàng'},
        ),
        migrations.RemoveField(
            model_name='khachhang',
            name='khNgaysinh',
        ),
        migrations.AlterField(
            model_name='khachhang',
            name='khThanhpho',
            field=models.CharField(choices=[('AN GIANG', 'An Giang'), ('Bà rịa - Vũng tàu', 'Bà rịa - Vũng tàu'), ('Bắc Giang', 'Bắc Giang'), ('BẮC KẠN', 'BẮC KẠN'), ('Bạc Liêu', 'Bạc Liêu'), ('Bắc Ninh', 'Bắc Ninh'), ('Bến Tre', 'Bến Tre'), ('Bình Định', 'Bình Định'), ('Bình Dương', 'Bình Dương'), ('Bình Phước', 'Bình Phước'), ('Bình Thuận', 'Bình Thuận'), ('Cà Mau', 'Cà Mau'), ('Cần Thơ', 'Cần Thơ'), ('Cao Bằng', 'Cao Bằng'), ('Đà Nẵng', 'Đà Nẵng'), ('Đắk Lắk', 'Đắk Lắk'), ('Đắk Nông', 'Đắk Nông'), ('Điện Biên', 'Điện Biên'), ('Đồng Nai', 'Đồng Nai'), ('Đồng Tháp', 'Đồng Tháp'), ('Gia Lai', 'Gia Lai'), ('Hà Giang', 'Hà Giang'), ('Hà Nam', 'Hà Nam'), ('Hà Nội', 'Hà Nội'), ('Hà Tĩnh', 'Hà Tĩnh'), ('Hải Dương', 'Hải Dương'), ('Hải Phòng', 'Hải Phòng'), ('Hậu Giang', 'Hậu Giang'), ('Hòa Bình', 'Hòa Bình'), ('Hưng Yên', 'Hưng Yên'), ('Khánh Hòa', 'Khánh Hòa'), ('Kiên Giang', 'Kiên Giang'), ('Kon Tum', 'Kon Tum'), ('Lai Châu', 'Lai Châu'), ('Lâm Đồng', 'Lâm Đồng'), ('Lạng Sơn', 'Lạng Sơn'), ('Lào Cai', 'Lào Cai'), ('Long An', 'Long An'), ('Nam Định', 'Nam Định'), ('Nghệ An', 'Nghệ An'), ('Ninh Bình', 'Ninh Bình'), ('Ninh Thuận', 'Ninh Thuận'), ('Phú Thọ', 'Phú Thọ'), ('Phú Yên', 'Phú Yên'), ('Quảng Bình', 'Quảng Bình'), ('Quảng Nam', 'Quảng Nam'), ('Quảng Ngãi', 'Quảng Ngãi'), ('Quảng Ninh', 'Quảng Ninh'), ('Quảng Trị', 'Quảng Trị'), ('Sóc Trăng', 'Sóc Trăng'), ('Sơn La', 'Sơn La'), ('Tây Ninh', 'Tây Ninh'), ('Thái Bình', 'Thái Bình'), ('Thái Nguyên', 'Thái Nguyên'), ('Thanh Hóa', 'Thanh Hóa'), ('Thừa Thiên Huế', 'Thừa Thiên Huế'), ('Tiền Giang', 'Tiền Giang'), ('Thành phố Hồ Chí Minh', 'Thành phố Hồ Chí Minh'), ('Trà Vinh', 'Trà Vinh'), ('Tuyên Quang', 'Tuyên Quang'), ('Vĩnh Long', 'Vĩnh Long'), ('Vĩnh Phúc', 'Vĩnh Phúc'), ('Yên Bái', 'Yên Bái')], max_length=256),
        ),
    ]
