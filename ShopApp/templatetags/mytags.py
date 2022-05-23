import datetime

from django import template

from ShopApp.models import Category

register = template.Library()


@register.simple_tag
def current_time():
    return datetime.datetime.now()


@register.inclusion_tag("fetch_categories.html")
def fetchcategories():
    categorydata = Category.objects.all()
    return {"categorydata" :  categorydata}