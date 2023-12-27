from django import forms 
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm,UsernameField,PasswordChangeForm,SetPasswordForm,PasswordResetForm
from django.contrib.auth.models import User

from .models import KHACHHANG

class LoginForm(AuthenticationForm):
    username =UsernameField(label='Tên đăng nhập',widget=forms.TextInput(attrs={'autofocus':'True',
                               'class':'form-control'}))
    password = forms.CharField(label='Mật khẩu',widget=forms.PasswordInput(attrs={
                               'autocomplete':'current-password','class':'form-control'}))

class CustomerRegisterForm(UserCreationForm):
    username = forms.CharField(label='Tên đăng nhập',widget=forms.TextInput(attrs={'autofocus':'True',
                               'class':'form-control'}))
    email = forms.EmailField(widget=forms.EmailInput(attrs={'class':'form-control'}))
    password1 = forms.CharField(label='Mật khẩu',widget=forms.PasswordInput(attrs={
                               'class':'form-control'}))
    password2 = forms.CharField(label='Nhập lại mật khẩu',widget=forms.PasswordInput(attrs={
                               'class':'form-control'}))
    
    class Meta:
        model = User
        fields = ['username','email','password1','password2']

class MyPasswordChangeForm(PasswordChangeForm):
    
    old_password = forms.CharField(label='Mật khẩu hiện tại',widget=forms.PasswordInput(attrs={
                               'autofocus':'True','autocomplete':'current-password','class':'form-control'}))
    new_password1 = forms.CharField(label='Mật khẩu mới',widget=forms.PasswordInput(attrs={
                                 'autocomplete':'current-password','class':'form-control'}))
    new_password2 = forms.CharField(label='Xác nhận mật khẩu',widget=forms.PasswordInput(attrs={
                                'autocomplete':'current-password','class':'form-control'}))
    
class MyPasswordResetForm(PasswordResetForm):
    email = forms.EmailField(label='Email',widget=forms.EmailInput(attrs={'class':'form-control'}))

class MySetPasswordForm(SetPasswordForm):
    new_password1 = forms.CharField(label='Mật khẩu mới',widget=forms.PasswordInput(attrs={
                                 'autocomplete':'current-password','class':'form-control'}))
    new_password2 = forms.CharField(label='Xác nhận mật khẩu',widget=forms.PasswordInput(attrs={
                                'autocomplete':'current-password','class':'form-control'}))

class CustomerProfileForm(forms.ModelForm):
    class Meta:
        model = KHACHHANG  
        fields = ('khTen','khDiachi','khThanhpho','khPhone')
        widgets={
            'khTen': forms.TextInput(attrs={'class':'form-control'}),
            # 'khNgaysinh': forms.DateInput(attrs={'class':'form-control'}),
            'khDiachi': forms.TextInput(attrs={'placeholder': 'Tên đường, số nhà','class':'form-control'}),
            'khThanhpho': forms.Select(attrs={'class':'form-control'}),
            'khPhone': forms.TextInput(attrs={'class':'form-control', 'pattern': '[0-9]*'})
        }
        labels = {
            'khTen': 'Họ tên',
            # 'khNgaysinh ': 'Ngày sinh',
            'khDiachi' :'Địa chỉ',
            'khThanhpho': 'Thành phố',
            'khPhone': 'Số điện thoại'
        }
        def clean_khPhone(self):
            khPhone = self.cleaned_data.get('khPhone')
            if not khPhone.isdigit():
                raise forms.ValidationError("Please enter a valid numeric phone number.")
            return khPhone