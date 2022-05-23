from django.conf.urls.static import static
from django.urls import path
from FlowerShop import settings
from ShopApp import views

urlpatterns = [
                  path('', views.myindex, name='myhome'),
                  path('user-login', views.mylogin, name='login'),
                  path('user-logout', views.mylogout, name='logout'),
                  path('create-account', views.mysignup.as_view(), name='signup'),
                  path('products', views.showproducts, name='products'),
                  path('sub-categories/<int:cid>', views.showsubcategories, name='subcategories'),
                  path('product-detail/<int:pid>', views.showproductdetail, name='productdetail'),
                  path('delete-cart/<int:id>', views.deletecart, name='deletecart'),
                  path('add-to-cart', views.addtocart, name='addtocart'),
                  path('shopping_cart', views.showcart, name='showcart'),
                  path('user-checkout', views.mycheckout, name='checkout'),
                  path('order-success', views.myorder, name='order'),
                  path('change-password', views.mychangepassword, name='changepassword'),
                  path('order-details/<int:oid>', views.orderdetails, name='orderdetails'),
                  path('my-orders', views.previousorders, name='previousorders'),
                  path('my-contact', views.contact, name='contactus'),
                  path('search-results', views.searchproducts, name='searchproduct'),
              ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

