from django.contrib import admin
from django.contrib.auth.models import Group
from .models import DANHMUCSANPHAM
from .models import LOAISANPHAM
from .models import SANPHAM, KHACHHANG,Cart,OrderPlaced,Supplier,LONHHAP,CTLONHAP,LOAIBAIVIET,BAIVIET

# Register your models here.

class DmspAdmin(admin.ModelAdmin):
    list_display = ('custom_dmsp_ten','custom_dmsp_duongdan')

    def custom_dmsp_ten(self, obj):
        return obj.dmspTen  # Replace with your actual field name

    custom_dmsp_ten.short_description = 'Tên'  # Custom column header
    
    def custom_dmsp_duongdan(self, obj):
        return obj.dmspDuongdan  # Replace with your actual field name

    custom_dmsp_duongdan.short_description = 'Đường dẫn' 
   
class LoaispAdmin(admin.ModelAdmin):
    list_display = ('lspTen','dmsp','lspDuongdan')
    search_fields = ['dmsp','lspTen']
    list_filter = ['dmsp']

class SanPhamAdmin(admin.ModelAdmin):
    list_display = ('id','spTen','spDongia','lsp','spHinhanh')
    search_fields = ['lsp', 'id']
    list_filter = ['lsp']

@admin.register(KHACHHANG)
class ProfileAdmin(admin.ModelAdmin):
    list_display = ('id','user','khTen','khDiachi','khThanhpho','khPhone')

@admin.register(Cart)
class CartAdmin(admin.ModelAdmin):
    list_display = ('id','user','product','quantity')

@admin.register(OrderPlaced)
class OrderPlaced(admin.ModelAdmin):
    list_display = ('id','user','customer','product','ordered_date','quantity','status')
    list_filter = ['ordered_date']

@admin.register(Supplier)
class Supplier(admin.ModelAdmin):
    list_display = ('id','nccTen')
    search_fields = ['nccTen']

@admin.register(LONHHAP)
class LONHHAP(admin.ModelAdmin):
    list_display = ('id','ngayNhap','ncc')
    list_filter = ['ngayNhap']


@admin.register(CTLONHAP)
class CTLONHAP(admin.ModelAdmin):
    list_display = ('id','soluongNhap','giaNhap','ngaysanxuat','hansudung','loNhap','product')
    search_fields = ['id']

@admin.register(LOAIBAIVIET)
class LOAIBAIVIET(admin.ModelAdmin):
    list_display = ('id','loaibaivietTen','lbvDuongdan','lbvHinhanh')

@admin.register(BAIVIET)
class BAIVIET(admin.ModelAdmin):
    list_display = ('id','baivietTen','bvDuongdan','bvNgaytao','bvTacgia','loaibaiviet')
    search_fields = ['loaibaiviet']
    list_filter = ['bvNgaytao']

admin.site.register(DANHMUCSANPHAM,DmspAdmin)
admin.site.register(LOAISANPHAM,LoaispAdmin)
admin.site.register(SANPHAM,SanPhamAdmin)

admin.site.unregister(Group)