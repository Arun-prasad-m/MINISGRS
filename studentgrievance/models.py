from django.db import models


class students(models.Model):
    st_name=models.CharField(max_length=150)
    st_email=models.CharField(max_length=150)
    st_department=models.CharField(max_length=150)
    st_semester=models.CharField(max_length=150)
    st_phone=models.CharField(max_length=150)
    st_password=models.CharField(max_length=150)
    st_cpassword=models.CharField(max_length=150)
    st_fathername=models.CharField(max_length=150)

   
class stdcomplaint(models.Model):
    complaint=models.CharField(max_length=150)
    status=models.CharField(max_length=150)
    uid=models.CharField(max_length=150)
    hod=models.CharField(max_length=150)

class pcomplaint(models.Model):
    complaint=models.CharField(max_length=150)
    status=models.CharField(max_length=150)
    uid=models.CharField(max_length=150)
    princy=models.CharField(max_length=150)
    
class staffcomplaint(models.Model):
    complaint=models.CharField(max_length=150)
    status=models.CharField(max_length=150)
    uid=models.CharField(max_length=150)
    princy=models.CharField(max_length=150) 
    
class principals(models.Model):
    name=models.CharField(max_length=150)
    phone=models.CharField(max_length=150)
    email=models.CharField(max_length=150)
    password=models.CharField(max_length=150)

class prodetails(models.Model):
    p_name=models.CharField(max_length=150)
    #p_age=models.CharField(max_length=150)
    p_email=models.CharField(max_length=150)
    p_phone=models.CharField(max_length=150)
    p_password=models.CharField(max_length=150)    
    depart=models.CharField(max_length=150)    

    
class hod(models.Model):
    p_name=models.CharField(max_length=150)
    #p_age=models.CharField(max_length=150)
    p_email=models.CharField(max_length=150)
    p_phone=models.CharField(max_length=150)
    p_password=models.CharField(max_length=150)    
    depart=models.CharField(max_length=150)    


class acknowledgement(models.Model):
    ack=models.CharField(max_length=150)
    status=models.CharField(max_length=150)
    date=models.CharField(max_length=150)
    h_id=models.CharField(max_length=150)
    p_id=models.CharField(max_length=150)
    t_id=models.CharField(max_length=150)
    cid=models.CharField(max_length=150)
    uid=models.CharField(max_length=150)




class teachers(models.Model):
    t_name=models.CharField(max_length=150)
    t_email=models.CharField(max_length=150)
    #t_phone=models.CharField(max_length=150)
    t_department=models.CharField(max_length=150)
    t_semester=models.CharField(max_length=150)
    t_password=models.CharField(max_length=150)


class department(models.Model):
    department=models.CharField(max_length=150)
    
    
    