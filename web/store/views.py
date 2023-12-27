from django.http import JsonResponse
from django.shortcuts import redirect, render,get_object_or_404
from django.views import View
from urllib import request
from .models import KHACHHANG, SANPHAM, DANHMUCSANPHAM, LOAISANPHAM,Cart,OrderPlaced,LOAIBAIVIET,BAIVIET
from .forms import CustomerProfileForm, CustomerRegisterForm
from django.contrib import messages
from django.db.models import Q
from django.conf import settings 
import json 

from chat_lr import chat_bot_LR

# Create your views here.

# def chat_view(request):
#     response = ""
#     if request.method == 'POST':
#         user_input = request.POST.get('user_input')
#         response = chat_bot_LR(user_input)
#     # return render(request, 'store/chat.html', {'response': response})

def chat_view(request):
    response = {}
    if request.method == 'POST':
        body_unicode = request.body.decode('utf-8')
        body = json.loads(body_unicode)
        user_input = body['user_input']
        
        response = chat_bot_LR(user_input)
        #print(chat_bot_LR(user_input))
        # print("hello")
    # return render(request, 'store/chat.html', {'response': response})
    return JsonResponse({'msg':response})

def home (request):
    totalitem = 0
    categories = DANHMUCSANPHAM.objects.all() 

    all_products = SANPHAM.objects.all()
    if request.user.is_authenticated:
        totalitem = len(Cart.objects.filter(user=request.user))
        
    return render(request, 'store/home.html',locals())

def about (request):
    totalitem = 0
    categories = DANHMUCSANPHAM.objects.all() 
    if request.user.is_authenticated:
        totalitem = len(Cart.objects.filter(user=request.user))
  
    return render(request, 'store/about.html',locals())

def blog (request):
    totalitem = 0
    categories = DANHMUCSANPHAM.objects.all() 
    posts = BAIVIET.objects.all()
    
    if request.user.is_authenticated:
        totalitem = len(Cart.objects.filter(user=request.user))
  
    return render(request, 'store/blog.html',locals())

def blog_detail(request, bvDuongdan, lbvDuongdan):
    categories = DANHMUCSANPHAM.objects.all() 
    categories_blogs = LOAIBAIVIET.objects.all()
    post = get_object_or_404(BAIVIET, bvDuongdan=bvDuongdan)

    # context = {
    #     'post': post,
    #     'categories_blog': categories_blog,
    # }
    return render(request, 'store/blog_detail.html', locals())

def contact (request):
    categories = DANHMUCSANPHAM.objects.all()
    totalitem = 0
    if request.user.is_authenticated:
        totalitem = len(Cart.objects.filter(user=request.user))
    return render(request, 'store/contact.html',locals())


def category_detail(request, dmspDuongdan):
    category = get_object_or_404(DANHMUCSANPHAM, dmspDuongdan=dmspDuongdan)
    product_types = LOAISANPHAM.objects.filter(dmsp=category)
    totalitem = 0
    categories = DANHMUCSANPHAM.objects.all() 
    if request.user.is_authenticated:
        totalitem = len(Cart.objects.filter(user=request.user))
  
    return render(request, 'store/category_detail.html', locals())

def product_list(request, dmspDuongdan, lspDuongdan):
    category = get_object_or_404(DANHMUCSANPHAM, dmspDuongdan=dmspDuongdan)
    product_type = get_object_or_404(LOAISANPHAM, lspDuongdan=lspDuongdan)
    products = SANPHAM.objects.filter(lsp=product_type)
    
    totalitem = 0
    categories = DANHMUCSANPHAM.objects.all() 
    if request.user.is_authenticated:
        totalitem = len(Cart.objects.filter(user=request.user))
  
    return render(request, 'store/product_list.html', locals())

def product_detail(request, dmspDuongdan, lspDuongdan,spDuongdan):
    category = get_object_or_404(DANHMUCSANPHAM, dmspDuongdan=dmspDuongdan)
    product_type = get_object_or_404(LOAISANPHAM, lspDuongdan=lspDuongdan)
    products= get_object_or_404(SANPHAM, spDuongdan=spDuongdan)

    totalitem = 0
    categories = DANHMUCSANPHAM.objects.all() 
    if request.user.is_authenticated:
        totalitem = len(Cart.objects.filter(user=request.user))
  
    return render(request, 'store/product_detail.html', locals())

class RegisterView(View):
    def get (self,request):
        categories = DANHMUCSANPHAM.objects.all()
       
        form = CustomerRegisterForm()
        return render(request, 'store/register.html',locals() )
    
    def post (self,request):
        form = CustomerRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request,"Đăng ký thành công")
            return redirect('login')
        else:
            messages.warning(request,"Vui lòng nhập đủ thông tin")
        return render(request, 'store/register.html',locals() )


class ProfileView(View):
    def get(self,request):
        totalitem = 0
        categories = DANHMUCSANPHAM.objects.all() 
        if request.user.is_authenticated:
            totalitem = len(Cart.objects.filter(user=request.user))
            form = CustomerProfileForm()
        return render(request, 'store/profile.html',locals() )

    def post (self,request):
        form = CustomerProfileForm(request.POST)
        if form.is_valid():
            user = request.user
            khTen = form.cleaned_data['khTen']
            khDiachi = form.cleaned_data['khDiachi']
            khThanhpho = form.cleaned_data['khThanhpho']
            khPhone = form.cleaned_data['khPhone']
            
            reg = KHACHHANG(user=user,khTen=khTen,khDiachi=khDiachi,
                            khThanhpho=khThanhpho, khPhone=khPhone)
            reg.save()
            messages.success(request,"Thêm thành công")
        else:
            messages.warning(request,"Vui lòng nhập đủ thông tin")
        return render(request, 'store/profile.html',locals() )

def address(request):
  #hien thi so luong sp gio hang
    totalitem = 0
    categories = DANHMUCSANPHAM.objects.all() 
    if request.user.is_authenticated:
        totalitem = len(Cart.objects.filter(user=request.user))
  
    add = KHACHHANG.objects.filter(user=request.user)
    return render (request, 'store/address.html',locals() )

class updateAddress(View):
    def get (self,request,pk):
      #hien thi so luong sp gio hang
        totalitem = 0
        categories = DANHMUCSANPHAM.objects.all() 
        if request.user.is_authenticated:
            totalitem = len(Cart.objects.filter(user=request.user))
  
        add =KHACHHANG.objects.get(pk=pk)
        form = CustomerProfileForm(instance=add)
        
        return render (request, 'store/updateAddress.html',locals() )

    def post (self,request,pk):
        form = CustomerProfileForm(request.POST)
        if form.is_valid():
            add = KHACHHANG.objects.get(pk=pk)
            add.khTen = form.cleaned_data['khTen']
            add.khDiachi = form.cleaned_data['khDiachi']
            add.khThanhpho = form.cleaned_data['khThanhpho']
            add.khPhone = form.cleaned_data['khPhone']
            add.save()
            messages.success(request,"Cập nhật thành công")
        else:
            messages.warning(request,"Vui lòng nhập đủ thông tin")
        return redirect("address")

class PasswordChangeView():
    pass
 
def add_to_cart(request):
    # user =request.user
    # products_id = request.GET.get('prod_id')
    # product = SANPHAM.objects.get(id=products_id)
    # Cart(user=user,product=product ).save()
    # return redirect("/cart")
    
    #hien thi so luong sp gio hang
    totalitem = 0
    categories = DANHMUCSANPHAM.objects.all() 
    if request.user.is_authenticated:
        totalitem = len(Cart.objects.filter(user=request.user))
  
    user = request.user
    product_id = request.GET.get('prod_id')
    if Cart.objects.filter(product=product_id).exists():
        prod_id = request.GET['prod_id']
        c = Cart.objects.get(Q(product=prod_id) & Q(user=request.user))
        c.quantity += 1
        c.save()
        user = request.user
        cart = Cart.objects.filter(user=user)
        amount = 0
        for p in cart:
            value = p.quantity * p.product.spDongia
            amount = amount + value
        totalamount = amount 

        print(prod_id)
        data = {
            'quantity': c.quantity,
            'amount': amount,
            'totalamount': totalamount
        }
        return redirect('/cart')
    else:
        pass
        product = SANPHAM.objects.get(id=product_id)
        Cart(user=user, product=product).save()
        return redirect('/cart')

def show_cart(request):
  #hien thi so luong sp gio hang
    totalitem = 0
    categories = DANHMUCSANPHAM.objects.all() 
    if request.user.is_authenticated:
        totalitem = len(Cart.objects.filter(user=request.user))
  
    user = request.user
    cart = Cart.objects.filter(user=user)
    amount = 0

    for p in cart:
        value = p.quantity * p.product.spDongia
        amount += value

    totalamount = amount

    # Format the amounts with commas as thousands separators
    formatted_amount = "{:,.0f} VND".format(amount)
    formatted_totalamount = "{:,.0f} VND".format(totalamount)

    # context = {
    #     'categories': categories,
    #     'formatted_amount': formatted_amount, 
    #     'formatted_totalamount': formatted_totalamount, 
    #     'cart': cart, 
    #     'user': user
    # }
    
    return render(request, 'store/addtocart.html', locals())

class checkout(View):
    def get(self, request):
        #hien thi so luong sp gio hang
        totalitem = 0
        categories = DANHMUCSANPHAM.objects.all() 
        if request.user.is_authenticated:
            totalitem = len(Cart.objects.filter(user=request.user))
        user = request.user
        add = KHACHHANG.objects.filter(user=user)
        cart_items= Cart.objects.filter(user=user)
        famount = 0
        for p in cart_items:
            value = p.quantity * p.product.spDongia
            famount += value

        totalamount = famount
        formatted_amount = "{:,.0f} VND".format(famount)
        formatted_totalamount = "{:,.0f} VND".format(totalamount)
       
        return render(request,'store/checkout.html',locals())

def payment_done(request):
    user = request.user
    custid = request.GET.get('custid')
    customer = KHACHHANG.objects.get(id=custid)
    cart = Cart.objects.filter(user=user)
    for c in cart:
        OrderPlaced(user=user, customer=customer,product=c.product,quantity=c.quantity).save()
        c.delete()
    return redirect("orders")
    
def orders(request):
    #hien thi so luong sp gio hang
    totalitem = 0
    categories = DANHMUCSANPHAM.objects.all() 
    if request.user.is_authenticated:
        totalitem = len(Cart.objects.filter(user=request.user))
  
    order_placed = OrderPlaced.objects.filter(user=request.user)
    return render(request,'store/orders.html', locals())

def plus_cart(request):
    if request.method=='GET':
        prod_id=request.GET['prod_id']
        c = Cart.objects.get(Q(product=prod_id) & Q(user=request.user))
        c.quantity +=1
        c.save()
        user = request.user
        cart = Cart.objects.filter(user=user)
        amount = 0

        for p in cart:
            value = p.quantity * p.product.spDongia
            amount += value

        totalamount = amount 
        formatted_amount = "{:,.0f} VND".format(amount)
        formatted_totalamount = "{:,.0f} VND".format(totalamount)

        # print(prod_id) 
        data = { 
            'quantity': c.quantity,
            'amount': formatted_amount,
            'totalamount': formatted_totalamount
        }
        return JsonResponse(data)
    
def minus_cart(request):
    if request.method=='GET':
        prod_id=request.GET['prod_id']
        c = Cart.objects.get(Q(product=prod_id) & Q(user=request.user))
        c.quantity -=1
        c.save()
        user = request.user
        cart = Cart.objects.filter(user=user)
        amount = 0

        for p in cart:
            value = p.quantity * p.product.spDongia
            amount += value

        totalamount = amount 
        formatted_amount = "{:,.0f} VND".format(amount)
        formatted_totalamount = "{:,.0f} VND".format(totalamount)
        # print(prod_id) 
        data = { 
            'quantity': c.quantity,
            'amount': formatted_amount,
            'totalamount': formatted_totalamount
        }
        return JsonResponse(data)


def remove_cart(request):
    if request.method=='GET':
        prod_id=request.GET['prod_id']
        c = Cart.objects.get(Q(product=prod_id) & Q(user=request.user))
        c.delete()
        user = request.user
        cart = Cart.objects.filter(user=user)
        amount = 0

        for p in cart:
            value = p.quantity * p.product.spDongia
            amount += value

        totalamount = amount 
        formatted_amount = "{:,.0f} VND".format(amount)
        formatted_totalamount = "{:,.0f} VND".format(totalamount)
        # print(prod_id) 
        data = { 
            'amount': formatted_amount,
            'totalamount': formatted_totalamount
        }
        return JsonResponse(data)
    
def remove_from_cart(request):
    if request.method == 'GET':
        prod_id=request.GET['prod_id']
        c = Cart.objects.get(Q(product=prod_id) & Q(user=request.user))
        c.delete()
        user = request.user
        cart = Cart.objects.filter(user=user)
        amount = 0

        for p in cart:
            value = p.quantity * p.product.spDongia
            amount += value

        totalamount = amount 
        formatted_amount = "{:,.0f} VND".format(amount)
        formatted_totalamount = "{:,.0f} VND".format(totalamount)
        # print(prod_id) 
        data = { 
            'amount': formatted_amount,
            'totalamount': formatted_totalamount
        }
        return JsonResponse(data)
    
def search(request):
    query = request.GET["search"]
    totalitem = 0
    categories = DANHMUCSANPHAM.objects.all() 
    if request.user.is_authenticated:
        totalitem = len(Cart.objects.filter(user=request.user))
    product = SANPHAM.objects.filter(Q(spTen__icontains=query))
    return render(request, 'store/search.html', locals())


