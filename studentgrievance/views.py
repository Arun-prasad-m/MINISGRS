from django.shortcuts import render
from django.shortcuts import redirect
from django.conf import settings

from . models import *
def index(request):
    return render(request,'index.html')
def indexx(request):
    return render(request,'index.html')
def studentregister(request):
    user=department.objects.all()
    return render(request,'studentregister.html',{'result':user}) 
def dash(request):
    return render(request,'index.html')    
def adddepart(request):
    if request.method=='POST':
        name=request.POST.get('name')
        log=department(department=name)
        log.save()
        return render(request,'department.html')
def regstudent(request):
    if request.method=='POST':
        st_name=request.POST.get('st_name')
        st_gender=request.POST.get('st_department')
        st_email=request.POST.get('st_email')
        st_college=request.POST.get('st_semester')
        st_phone=request.POST.get('st_phone')
        st_password=request.POST.get('st_password')
        st_cpassword=request.POST.get('st_cpassword')
        st_fathername=request.POST.get('fathername')
        log=students(st_name=st_name,st_department=st_gender,st_email=st_email,st_semester=st_college,st_phone=st_phone,st_password=st_password,st_cpassword=st_cpassword,st_fathername=st_fathername)
        log.save()
        return render(request,'studentregister.html')

def studentlogin(request):
    return render(request,'studentlogin.html') 

'''def login(request):
    if request.method=='POST':
        st_name=request.POST.get('st_name')
        st_password=request.POST.get('st_password')
        log=students(st_name=st_name,st_password=st_password)
        if email=='admin@gmail.com' and password=='admin':
            request.session['adminemail']=email
            request.session['logint']='admin'
            return render(request,'admin/index.html')  
        else if students.objects.filter(st_email=email,st_password=password).exit():
            userdetails=students.objects.filter(st_email=email,st_password=password)
            request.session['userid']=userdetails.id
            request.session['logint']='student'
            return render(request,'student/index.html')  
        else:
            return render(request,'studentlogin.html')'''
              
def login(request):
    email = request.POST.get('email')
    password = request.POST.get('password')
    print(email)
    print(password)
    if email == 'admin@gmail.com' and password =='admin':
        request.session['logintdetail'] = email
        request.session['admin'] ='admin'
        return render(request,'index.html')

    elif students.objects.filter(st_email=email,st_password=password).exists():
        userdetails=students.objects.get(st_email=request.POST['email'],st_password=password)
        if userdetails.st_password == request.POST['password']:
            request.session['uid'] = userdetails.id
            request.session['uname'] = userdetails.st_name

            request.session['uemail'] = email

            request.session['user'] = 'user'

            
            return render(request,'index.html')

    elif hod.objects.filter(p_email=email,p_password=password).exists():
        userdetails=hod.objects.get(p_email=request.POST['email'],p_password=password)
        if userdetails.p_password == request.POST['password']:
            request.session['pid'] = userdetails.id
            request.session['pname'] = userdetails.p_name

            request.session['uemail'] = email

            request.session['user'] = 'user'

            
            return render(request,'index.html') 

    elif principals.objects.filter(email=email,password=password).exists():
        userdetails=principals.objects.get(email=request.POST['email'],password=password)
        if userdetails.password == request.POST['password']:
            request.session['prid'] = userdetails.id
            request.session['name'] = userdetails.name

            request.session['email'] = email

            request.session['user'] = 'user'

            
            return render(request,'index.html')   

    elif teachers.objects.filter(t_email=email,t_password=password).exists():
        userdetails=teachers.objects.get(t_email=request.POST['email'],t_password=password)
        if userdetails.t_password == request.POST['password']:
            request.session['tid'] = userdetails.id
            request.session['tname'] = userdetails.t_name

            request.session['email'] = email

            request.session['user'] = 'user'

            
            return render(request,'index.html')  

    else:
            return render(request, 'studentlogin.html', {'status': 'Invalid Email or Password'})



def addcomplaint(request):
    a=request.session['uname']
    if request.method=='POST':
        hoddd=request.POST.get('hod')

        complaint=request.POST.get('complaint')
        status=request.POST.get('status')
        log=stdcomplaint(complaint=complaint,status=status,uid=a,hod=hoddd)
        log.save()
        return render(request,'complaint.html')

def princycomplaint(request):
    a=request.session['uname']
    if request.method=='POST':
        hoddd=request.POST.get('hod')

        complaint=request.POST.get('complaint')
        status=request.POST.get('status')
        log=pcomplaint(complaint=complaint,status=status,uid=a,princy=hoddd)
        log.save()
        return render(request,'princomplaint.html')

def teachercomplaint(request):
    a=request.session['uname']
    if request.method=='POST':
        hoddd=request.POST.get('hod')

        complaint=request.POST.get('complaint')
        status=request.POST.get('status')
        log=staffcomplaint(complaint=complaint,status=status,uid=a,princy=hoddd)
        log.save()
        return render(request,'tcomplaint.html')

def complaintsss(request):
    return render(request,'vcomplaint.html') 


def depart(request):
    return render(request,'department.html') 
def hodd(request):
    a=request.session['uname']
    temp=students.objects.get(st_name=a)
    b=temp.st_department
    c=temp.st_semester
    user=hod.objects.get(depart=b)
    return render(request,'complaint.html',{'result':user})  
def staff(request):
    a=request.session['uname']
    temp=students.objects.get(st_name=a)
    b=temp.st_department
    c=temp.st_semester
    user=teachers.objects.filter(t_department=b,t_semester=c)
    return render(request,'tcomplaint.html',{'result':user})    
    
def princ(request):

    user=principals.objects.get(id=1)
    return render(request,'princomplaint.html',{'result':user}) 
def logout(request):
    session_keys = list(request.session.keys())
    for key in session_keys:
        del request.session[key]
    return redirect(index)
    
def addprincy(request):
    if request.method=='POST':
        name=request.POST.get('name')
        phone=request.POST.get('phone')
        email=request.POST.get('email')
        password=request.POST.get('password')
        log=principals(name=name,phone=phone,email=email,password=password)
        log.save()
        return render(request,'addpricipal.html')
def     pricyy(request):
    return render(request,'addpricipal.html') 

def prodetailss (request):
    user=department.objects.all()
    return render(request,'prodetails.html',{'result':user})

def addprodetial(request):
    if request.method=='POST':
        p_name=request.POST.get('p_name')
        #p_age=request.POST.get('p_age')
        p_email=request.POST.get('p_email')
        p_phone=request.POST.get('p_phone')
        p_password=request.POST.get('p_password')
        depart=request.POST.get('depart')

        print(p_name)
        #print(p_age)
        print(p_email)
        print(p_phone)
        print(p_password)
        log=hod(p_name=p_name,p_email=p_email,p_phone=p_phone,p_password=p_password,depart=depart)
        log.save()
        return render(request,'prodetails.html',{'success':'Successfully Added'})



def view(request):
    user=stdcomplaint.objects.filter(status='pending',hod=request.session['pname'])
    return render(request,'view.html',{'result':user})

def approved(request,id):
    upview=stdcomplaint.objects.get(id=id)
    return render(request,'ack.html',{'result':upview}) 
def ack(request):
    return render(request,'ack.html') 

def ackupload(request):
    a= request.session['pid'] 
    if request.method=='POST':
        ack=request.POST.get('ack')
        status=request.POST.get('status')
        date=request.POST.get('date')
        log=acknowledgement(ack=ack,status=status,date=date,cid=a)
        log.save()
    return redirect(view)

def admincview(request):
    return render(request,'admincview.html') 

def admincviewadd(request):
    cview=stdcomplaint.objects.all()
    return render(request,'admincview.html',{'result':cview}) 


def about(request):
    return render(request,'about.html') 
       






def pprof(request):
    tem=request.session['prid']
    vpro=principals.objects.get(id=tem)
    return render(request,'pprofile.html',{'result':vpro})



 
    
    
def logout(request):
    session_keys = list(request.session.keys())
    for key in session_keys:
        del request.session[key]
    return redirect(index)
    
def addprincy(request):
    if request.method=='POST':
        name=request.POST.get('name')
        phone=request.POST.get('phone')
        email=request.POST.get('email')
        password=request.POST.get('password')
        log=principals(name=name,phone=phone,email=email,password=password)
        log.save()
        return render(request,'addpricipal.html',{'success':'Successfully Register'})
def     pricyy(request):
    return render(request,'addpricipal.html') 




def approved(request,id):
    upd=stdcomplaint.objects.get(id=id)
    a=upd.complaint
    b=upd.uid
    c=upd.hod
    status='approved'
    log=stdcomplaint(complaint=a,status=status,uid=b,hod=c,id=id)
    log.save()
    return render(request,'ack.html',{'result':upd}) 

def ack(request):
    return render(request,'ack.html')


def ackupload(request):
    a=request.session['pid']
    if request.method=='POST':
        ack=request.POST.get('ack')
        status=request.POST.get('status')
        date=request.POST.get('date')
        cid=request.POST.get('cid')
        uid=request.POST.get('uid')

        log=acknowledgement(ack=ack,status=status,date=date,cid=cid,h_id=a,uid=uid)
        log.save()
        return redirect(view)


def assignupload(request):
    a=request.session['pname']
    if request.method=='POST':
        uid=request.POST.get('uid')
        status=request.POST.get('status')
        cmpid=request.POST.get('cmpid')
        log=pcomplaint(uid=uid,status=status,complaint=cmpid,princy=a)
        log.save()
        return redirect(view)

def assignn(request,id):
    upview=stdcomplaint.objects.get(id=id)
    a=upview.complaint
    b=upview.uid
    c=upview.hod
    status='assign'
    log=stdcomplaint(complaint=a,status=status,uid=b,hod=c,id=id)
    log.save()
    temp=principals.objects.all()

    return render(request,'assign.html',{'result':upview,'res':temp})


def priview(request):
    tem=request.session['prid']
    pro= principals.objects.get(id=tem)
    return render(request,'pprofile.html',{'result':pro})
def proprof(request):
    tem=request.session['pid']
    pro= hod.objects.get(id=tem)
    return render(request,'proprofile.html',{'result':pro})

def pcview(request):
    user=stdcomplaint.objects.all()

    return render(request,'pcview.html',{'result':user})


def pcapp(request):
    user=pcomplaint.objects.filter(status='pending')

    return render(request,'pview.html',{'result':user})

def pack(request):
    return render(request,'pack.html')

def packupload(request):
    a=request.session['prid']
    if request.method=='POST':
        ack=request.POST.get('ack')
        status=request.POST.get('status')
        date=request.POST.get('date')
        cid=request.POST.get('cid')
        uid=request.POST.get('uid')

        print(ack)
        print(status)
        print(date)
        log=acknowledgement(ack=ack,status=status,date=date,p_id=a,cid=cid,uid=uid)
        log.save()
        return redirect(pcapp)

def prcapproved(request,id):
    upd=pcomplaint.objects.get(id=id)
    a=upd.complaint
    b=upd.uid
    c=upd.princy
    status='approved'
    log=pcomplaint(complaint=a,status=status,uid=b,princy=c,id=id)
    log.save()

    return render(request,'pack.html',{'result':upd}) 

def addteacher (request):
    user=department.objects.all()
    return render(request,'addteacher.html',{'result':user})

def addtdetial(request):
    if request.method=='POST':
        t_name=request.POST.get('t_name')
        t_email=request.POST.get('t_email')
        t_department=request.POST.get('t_department')
        t_semester=request.POST.get('t_semester')
        t_password=request.POST.get('t_password')
        print(t_name)
        print(t_email)
        print(t_department)
        print(t_semester)
        print(t_password)
        log=teachers(t_name=t_name,t_email=t_email,t_department=t_department,t_semester=t_semester,t_password=t_password)
        log.save()
        return render(request,'addteacher.html',{'success':'successfully Added'})


def tprofile(request):
    tem=request.session['tid']
    vpro= teachers.objects.get(id=tem)
    return render(request,'tprofile.html',{'result':vpro})

def tcview(request):
    user=staffcomplaint.objects.filter(status='pending',princy=request.session['tname'])
    return render(request,'tcview.html',{'result':user})
def tack(request):
    return render(request,'tack.html')


def assignt(request):
    a=request.session['tname']
    if request.method=='POST':
        uid=request.POST.get('uid')
        status=request.POST.get('status')
        cmpid=request.POST.get('cmpid')
        log=pcomplaint(uid=uid,status=status,complaint=cmpid,princy=a)
        log.save()
        return redirect(tcview)

def tackupload(request):
    a=request.session['tid']
    if request.method=='POST':
        ack=request.POST.get('ack')
        status=request.POST.get('status')
        date=request.POST.get('date')
        cid=request.POST.get('cid')
        uid=request.POST.get('uid')

        log=acknowledgement(ack=ack,status=status,date=date,t_id=a,cid=cid,uid=uid)
        log.save()
        return redirect(tcview)
def tcapproved(request,id):
    upd=staffcomplaint.objects.get(id=id)
    a=upd.complaint
    b=upd.uid
    c=upd.princy
    status='approved'
    log=staffcomplaint(complaint=a,status=status,uid=b,princy=c,id=id)
    log.save()

    return render(request,'tack.html',{'result':upd}) 




def tassign(request,id):
    upd=staffcomplaint.objects.get(id=id)
    a=upd.complaint
    b=upd.uid
    c=upd.princy
    status='assign'
    log=staffcomplaint(complaint=a,status=status,uid=b,princy=c,id=id)
    log.save()
    temp=principals.objects.all()

    return render(request,'assigntack.html',{'result':upd,'res':temp}) 
    
    


def hassign(request,id):
    upd=staffcomplaint.objects.get(id=id)
    a=upd.complaint
    b=upd.uid
    c=upd.princy
    status='assign'
    log=staffcomplaint(complaint=a,status=status,uid=b,princy=c,id=id)
    log.save()
    user=students.objects.get(st_name=b)
    v=user.st_department
    
    temp=hod.objects.get(depart=v)

    return render(request,'hassignack.html',{'result':upd,'res':temp}) 
    
    


def assignhh(request):
    if request.method=='POST':
        uid=request.POST.get('uid')
        status=request.POST.get('status')
        cmpid=request.POST.get('cmpid')
        name=request.POST.get('name')

        log=stdcomplaint(uid=uid,status=status,complaint=cmpid,hod=name)
        log.save()
        return redirect(tcview)
        
        
        
        
        
 
def userprofile(request):
    tem=request.session['uid']
    vpro=students.objects.get(id=tem)
    return render(request,'userprofile.html',{'result':vpro})

       

 
def userviewack(request):
    tem=request.session['uname']
    
    vpro=acknowledgement.objects.filter(uid=tem)
    return render(request,'viewuserack.html',{'result':vpro})

       