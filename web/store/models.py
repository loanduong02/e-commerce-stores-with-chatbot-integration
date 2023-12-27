from django.db import models
from unidecode import unidecode
from django.utils.text import slugify
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from tinymce import HTMLField

##CITY
khThanhpho_CHOICES =(
    ('AN GIANG','An Giang'),('Bà rịa - Vũng tàu','Bà rịa - Vũng tàu'), 
    ('Bắc Giang','Bắc Giang'),('BẮC KẠN','BẮC KẠN'), ('Bạc Liêu','Bạc Liêu'),
    ('Bắc Ninh','Bắc Ninh'),('Bến Tre','Bến Tre'), ('Bình Định','Bình Định'),
    ('Bình Dương','Bình Dương'), ('Bình Phước','Bình Phước'),('Bình Thuận','Bình Thuận'),
    ('Cà Mau','Cà Mau'), ('Cần Thơ','Cần Thơ'),('Cao Bằng','Cao Bằng'),
    ('Đà Nẵng','Đà Nẵng'),('Đắk Lắk','Đắk Lắk'),('Đắk Nông','Đắk Nông'), 
    ('Điện Biên','Điện Biên'), ('Đồng Nai','Đồng Nai'), ('Đồng Tháp','Đồng Tháp'),
    ('Gia Lai','Gia Lai'), ('Hà Giang','Hà Giang'), ('Hà Nam','Hà Nam'),('Hà Nội','Hà Nội'), 
    ('Hà Tĩnh','Hà Tĩnh'), ('Hải Dương','Hải Dương'), ('Hải Phòng','Hải Phòng'), ('Hậu Giang','Hậu Giang'),
    ('Hòa Bình','Hòa Bình'),('Hưng Yên','Hưng Yên'),('Khánh Hòa','Khánh Hòa'),
    ('Kiên Giang','Kiên Giang'), ('Kon Tum','Kon Tum'), ('Lai Châu','Lai Châu'),
    ('Lâm Đồng','Lâm Đồng'),('Lạng Sơn','Lạng Sơn'),('Lào Cai','Lào Cai'),
    ('Long An','Long An'), ('Nam Định','Nam Định'), ('Nghệ An','Nghệ An'),
    ('Ninh Bình','Ninh Bình'), ('Ninh Thuận','Ninh Thuận'),('Phú Thọ','Phú Thọ'),
    ('Phú Yên','Phú Yên'), ('Quảng Bình','Quảng Bình'), ('Quảng Nam','Quảng Nam'),
    ('Quảng Ngãi','Quảng Ngãi'),('Quảng Ninh','Quảng Ninh'),('Quảng Trị','Quảng Trị'),('Sóc Trăng','Sóc Trăng'),
    ('Sơn La','Sơn La'), ('Tây Ninh','Tây Ninh'), ('Thái Bình','Thái Bình'), ('Thái Nguyên','Thái Nguyên'),
    ('Thanh Hóa','Thanh Hóa'),('Thừa Thiên Huế','Thừa Thiên Huế'), ('Tiền Giang','Tiền Giang'),
    ('Thành phố Hồ Chí Minh','Thành phố Hồ Chí Minh'),('Trà Vinh','Trà Vinh'),('Tuyên Quang','Tuyên Quang'),('Vĩnh Long','Vĩnh Long'),
    ('Vĩnh Phúc','Vĩnh Phúc'), ('Yên Bái','Yên Bái')
)
 
# Create your models here.

class KHACHHANG(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    khTen = models.CharField(max_length=256)
    khDiachi = models.CharField(max_length=256)
    khThanhpho = models.CharField(choices=khThanhpho_CHOICES,max_length=256)
    khPhone = models.CharField(max_length=12)
    def __str__(self) :
        return self.khTen
    class Meta:
        verbose_name = 'Khách hàng'
        verbose_name_plural = 'Khách hàng'

class DANHMUCSANPHAM(models.Model):
    dmspTen = models.CharField(max_length=256, null=True)
    dmspDuongdan = models.SlugField(unique=True, null=True,blank=True, max_length=256)

    def save(self, *args, **kwargs):
        if not self.dmspDuongdan:
            self.dmspDuongdan = self.generate_slug(self.dmspTen)
        super(DANHMUCSANPHAM, self).save(*args, **kwargs)

    def generate_slug(self, value):
        # Remove accents and replace spaces with hyphens
        slug_value = unidecode(value).replace(' ', '-')
        return slugify(slug_value)
    class Meta:
        verbose_name = 'Danh mục sản phẩm'
        verbose_name_plural = 'Danh mục sản phẩm'
    def __str__(self) :
        return self.dmspTen
    
class LOAISANPHAM(models.Model):
    lspTen = models.CharField(max_length=256, null=True)
    lspThumb = models.ImageField(upload_to='product')
    lspDuongdan = models.SlugField(unique=True, null=True,blank=True,  max_length=256)
    dmsp = models.ForeignKey(DANHMUCSANPHAM, on_delete=models.CASCADE)

    def save(self, *args, **kwargs):
        if not self.lspDuongdan:
            self.lspDuongdan = self.generate_slug(self.lspTen)
        super(LOAISANPHAM, self).save(*args, **kwargs)

    def generate_slug(self, value):
        # Remove accents and replace spaces with hyphens
        slug_value = unidecode(value).replace(' ', '-')
        return slugify(slug_value)

    class Meta:
        verbose_name = 'Loại sản phẩm'
        verbose_name_plural = 'Loại sản phẩm'

    def __str__(self) :
        return self.lspTen
     
    @property
    def ImageURL(self):
        try:
            url = self.lspThumb.url
        except:
            url = ''
        return url
 
class SANPHAM(models.Model):
    spTen = models.CharField(max_length=256, null=True)
    spGioiThieu = models.TextField()
    spCongdung=  models.TextField()
    spHuongdansudung =  models.TextField()
    spThanhphan =  models.TextField()
    spDongia =  models.IntegerField()
    spHinhanh = models.ImageField(upload_to='product')
    spDuongdan = models.SlugField(unique=True, null=True,blank=True,  max_length=256)
    lsp = models.ForeignKey(LOAISANPHAM, on_delete=models.CASCADE)

    def save(self, *args, **kwargs):
        if not self.spDuongdan:
            self.spDuongdan = self.generate_slug(self.spTen)
        super(SANPHAM, self).save(*args, **kwargs)

    def generate_slug(self, value):
        # Remove accents and replace spaces with hyphens
        slug_value = unidecode(value).replace(' ', '-')
        return slugify(slug_value)
    
    def formatted_price(self):
        return "{:,.0f}".format(self.spDongia).replace(",", ".")
    
    class Meta:
        verbose_name = 'Sản phẩm'
        verbose_name_plural = 'Sản phẩm'

    def __str__(self) :
        return self.spTen
    # fix Img
    @property
    def ImageURL(self):
        try:
            url = self.spHinhanh.url
        except:
            url = ''
        return url
 

class Cart(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(SANPHAM,on_delete=models.CASCADE)
    quantity = models.PositiveBigIntegerField(default=1)

    @property
    def total_cost(self):
        return self.quantity * self.product.spDongia
    
    class Meta:
        verbose_name = 'Giỏ hàng'
        verbose_name_plural = 'Giỏ hàng'

STATUS_CHOICES =(
    ('Đã xác nhận', 'Đã xác nhận'),
    ('Đóng gói','Đóng gói'),
    ('Đang giao hàng','Đang giao hàng'),
    ('Đã giao hàng','Đã giao hàng'),
    ('Hủy','Hủy'),
    ('Đang xử lý','Đang xử lý')
)
class OrderPlaced(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    customer = models.ForeignKey(KHACHHANG, on_delete=models.CASCADE)
    product = models.ForeignKey(SANPHAM,on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1)
    ordered_date = models.DateTimeField(auto_now_add=True)
    status = models.CharField(max_length=50, choices=STATUS_CHOICES, default='Đang xử lý')

    @property
    def total_cost(self):
        return self.quantity * self.product.spDongia
    
    class Meta:
        verbose_name = 'Đơn hàng'
        verbose_name_plural = 'Đơn hàng'

class Supplier(models.Model):
    nccTen = models.CharField(max_length=256, null=True)
    
    def __str__(self) :
        return self.nccTen
    
    class Meta:
        verbose_name = 'Nhà cung cấp'
        verbose_name_plural = 'Nhà cung cấp'

class LONHHAP(models.Model):
    ngayNhap = models.DateField()
    ncc = models.ForeignKey(Supplier, on_delete=models.CASCADE)
    
    class Meta:
        verbose_name = 'Lô nhập'
        verbose_name_plural = 'Lô nhập'

class CTLONHAP(models.Model):
    soluongNhap = models.PositiveIntegerField(default=1)
    giaNhap = models.IntegerField()
    ngaysanxuat = models.DateField()
    hansudung = models.DateField()
    loNhap =  models.ForeignKey(LONHHAP, on_delete=models.CASCADE)
    product = models.ForeignKey(SANPHAM, on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Thông tin lô nhập'
        verbose_name_plural = 'Thông tin lô nhập'

class LOAIBAIVIET(models.Model):
    loaibaivietTen = models.CharField(max_length=20)
    lbvDuongdan = models.SlugField(unique=True, null=True,blank=True,  max_length=256)
    lbvHinhanh = models.ImageField(upload_to='thumb')
 
    def __str__(self):
        return self.loaibaivietTen
    
    def save(self, *args, **kwargs):
        if not self.lbvDuongdan:
            self.lbvDuongdan = self.generate_slug(self.loaibaivietTen)
        super(LOAIBAIVIET, self).save(*args, **kwargs)

    def generate_slug(self, value):
        # Remove accents and replace spaces with hyphens
        slug_value = unidecode(value).replace(' ', '-')
        return slugify(slug_value)
    
    #   fix Img
    @property
    def ImageURL(self):
        try:
            url = self.bvThumb.url
        except:
            url = ''
        return url
    
    class Meta:
        verbose_name = 'Loại bài viết'
        verbose_name_plural = 'Loại bài viết'

BV_CHOICES=(
    ('bản nháp', 'Bản nháp'),
    ('hiển thị', 'Hiển thị')

)
class BAIVIET(models.Model):
    baivietTen = models.CharField(max_length=255)
    bvNoidung = HTMLField()
    bvNgaytao = models.DateTimeField(auto_now_add=True)
    bvDuongdan = models.SlugField(unique=True, null=True,blank=True,  max_length=256)
    bvThumb = models.ImageField(upload_to='thumb')
    bvTrangthai = models.CharField(max_length=255, choices=BV_CHOICES,default='Bản nháp')
    bvTacgia = models.ForeignKey(User, on_delete=models.CASCADE)
    loaibaiviet = models.ForeignKey(LOAIBAIVIET,on_delete=models.CASCADE)

    def __str__(self):
        return self.baivietTen
    
    def save(self, *args, **kwargs):
        if not self.bvDuongdan:
            self.bvDuongdan = self.generate_slug(self.baivietTen)
        super(BAIVIET, self).save(*args, **kwargs)

    def generate_slug(self, value):
        # Remove accents and replace spaces with hyphens
        slug_value = unidecode(value).replace(' ', '-')
        return slugify(slug_value)
    
    # fix Img
    @property
    def ImageURL(self):
        try:
            url = self.bvThumb.url
        except:
            url = ''
        return url
    
    class Meta:
        verbose_name = 'Bài viết'
        verbose_name_plural = 'Bài viết'

# class Wishlist(models.Model):
#     user = models.ForeignKey(User,on_delete=models.CASCADE)
#     product = models.ForeignKey(SANPHAM, on_delete=models.CASCADE)

