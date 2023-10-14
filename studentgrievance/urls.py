"""studentgrievance URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.contrib import admin
from django.urls import path
from . import views
#from django.conf.urls import url
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('',views.index,name="index"),
    path('studentregister',views.studentregister),
    path('regstudent',views.regstudent),
    path('studentlogin',views.studentlogin),
    path('login',views.login),
    path('hodd',views.hodd,name="hodd"),
    path('indexx',views.indexx,name="indexx"),
    path('dash',views.dash,name="dash"),

    path('priview',views.priview,name="priview"),

    path('teachercomplaint',views.teachercomplaint,name="teachercomplaint"),

    path('adddepart',views.adddepart,name="adddepart"),

    path('princ',views.princ,name="princ"),
    path('staff',views.staff,name="staff"),

    path('princycomplaint',views.princycomplaint,name="princycomplaint"),
    path('depart',views.depart,name="depart"),

    path('addcomplaint',views.addcomplaint),
    path('complaintsss',views.complaintsss),
    path('logout',views.logout),
    path('addprincy',views.addprincy),
    path('pricyy',views.pricyy),
    path('prodetailss',views.prodetailss),
    path('addprodetial',views.addprodetial,name="addprodetial"),
    path('view',views.view),
    path('approved/<int:id>',views.approved ,name="approved"),
    path('ack',views.ack),
    path('approved/ackupload',views.ackupload),
    path('admincview',views.admincview),
    path('admincviewadd',views.admincviewadd),
    path('about',views.about),
    path('pprof',views.pprof),
    path('prodetailss',views.prodetailss),
    path('addprodetial',views.addprodetial,name="addprodetial"),
    path('view',views.view),
    path('approved/<int:id>',views.approved ,name="approved"),
    path('ack',views.ack),
    path('approved/ackupload',views.ackupload),
    path('assignn/<int:id>',views.assignn,name="assignn"),
    path('assignn/assignupload',views.assignupload,name="assignupload"),
    path('proprof',views.proprof),
    path('pcview',views.pcview),
    path('pcapp',views.pcapp),
    path('pack',views.pack),
    path('prcapproved/packupload',views.packupload),
    path('prcapproved/<int:id>',views.prcapproved ,name="prcapproved"),
    path('addteacher',views.addteacher),
    path('addtdetial',views.addtdetial,name="addtdetial"),
    path('tprofile',views.tprofile),
    path('tcview',views.tcview),
    path('tack',views.tack),
    path('tcapproved/tackupload',views.tackupload),

    path('userviewack',views.userviewack),

    path('userprofile',views.userprofile),

    path('tassign/<int:id>',views.tassign ,name="tassign"),

    path('tassign/assignt',views.assignt),
    path('hassign/<int:id>',views.hassign ,name="hassign"),

    path('hassign/assignhh',views.assignhh ,name="assignhh"),

    path('tcapproved/tcapproved',views.tcapproved),
    path('tcapproved/<int:id>',views.tcapproved ,name="tcapproved"),
    path('admincview',views.admincview),
    path('admincviewadd',views.admincviewadd),
    path('about',views.about),
    path('pprof',views.pprof),

]   + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


