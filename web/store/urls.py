from django.urls import path
from .import views
from django.contrib import admin
from django.conf.urls.static import static
from django.conf import settings
from django.contrib.auth import views as auth_view
from .forms import LoginForm, MyPasswordResetForm, MyPasswordChangeForm, MySetPasswordForm


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.home, name='base'),
    path('gioi-thieu/', views.about, name='about'),
    path('lien-he/', views.contact, name='contact'),
    
    path('blog/', views.blog, name='blog'),
    path('blog/<str:lbvDuongdan>/<str:bvDuongdan>/', views.blog_detail, name='blog_detail'),
    
    path('search/', views.search, name='search'),

    
    path('chat/', views.chat_view, name='chat'),

    path('add-to-cart/', views.add_to_cart, name='add_to_cart'),
    path('cart/', views.show_cart, name='showcart'),
    path('checkout/', views.checkout.as_view(), name='checkout'),
    path('paymentdone/', views.payment_done, name='paymentdone'),
    path('orders/', views.orders, name='orders'),

    path('pluscart/', views.plus_cart),
    path('minuscart/', views.minus_cart),
    path('removefromcart/', views.remove_from_cart, name='remove_from_cart'),
    path('removecart/', views.remove_cart), 


    # path('pluswishlist/', views.plus_wishlist), 
    # path('minuswishlist/', views.minus_wishlist),
    

    path('dang-ky/', views.RegisterView.as_view(), name='register'),
    path('dang-nhap/', auth_view.LoginView.as_view(template_name='store/login.html',
                        authentication_form=LoginForm), name='login'),
    
    path('password-reset/', auth_view.PasswordResetView.as_view(template_name='store/password_reset.html',
                        form_class=MyPasswordResetForm), name='password_reset'),

    path('password-reset/done/', auth_view.PasswordResetDoneView.as_view(template_name=
                        'store/password_reset_done.html',), name='password_reset_done'),
  
    path('password-reset-confirm/<uidb64>/<token>/', auth_view.PasswordResetConfirmView.as_view(template_name=
                        'store/password_reset_confirm.html', form_class=MySetPasswordForm), name='password_reset_confirm'),
    
    path('password-reset-complete/', auth_view.PasswordResetCompleteView.as_view(template_name=
                        'store/password_reset_complete.html'), name='password_reset_complete'),
    

    path('passwordchange/', auth_view.PasswordChangeView.as_view(template_name='store/passwordchange.html',
                        form_class=MyPasswordChangeForm, success_url='/passwordchangedone'), name='passwordchange'),

    path('passwordchangedone/', auth_view.PasswordChangeDoneView.as_view(template_name='store/passwordchangedone.html'),
                        name='passwordchangedone'),
    
    path('logout/', auth_view.LogoutView.as_view(next_page='login'), name='logout'),
 

    path('profile/', views.ProfileView.as_view(), name='profile'),
    path('address/', views.address, name='address'),
    path('updateAddress/<int:pk>', views.updateAddress.as_view(), name='updateAddress'),


    
    # path('categories/', views.category_list, name='category_list'),
    path('<slug:dmspDuongdan>/', views.category_detail, name='category_detail'),
    path('<slug:dmspDuongdan>/<slug:lspDuongdan>/', views.product_list, name='product_list'),
    path('<slug:dmspDuongdan>/<slug:lspDuongdan>/<slug:spDuongdan>/', views.product_detail, name='product_detail'),



]+static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

admin.site.site_header = "Beauty Shop"
admin.site.site_title = "Beauty Shop"
admin.site.site_index_title = "Chào mừng đến với Beauty Shop"