<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*"%>
<%
    String nm=request.getParameter("q");
    if(nm==null) nm=" ";
     MyLib obj=new MyLib();
    Connection cn=obj.createConnection();  
    String s1="select * from doctor_with_hospital where dname like '%"+nm+"%' ";
    PreparedStatement p1=cn.prepareStatement(s1);
    
    ResultSet r1=p1.executeQuery();
    
    while(r1.next())
    {
        String name,contact,address,email,qualification,specialisation,time,d1,d2,d3,d4,d5,d6,d7,email_hos,hname,lno,haddress,hcontact,emeregncy,gbeds,acbeds,hemail;
        name=r1.getString("dname");
        contact=r1.getString("dcontact");
        address=r1.getString("daddress");
        email=r1.getString("demail");
        qualification=r1.getString("qualification");
        specialisation=r1.getString("specialisation");
        time=r1.getString("timings");
        d1=r1.getString("monday");
        d2=r1.getString("tuesday");
        d3=r1.getString("wednesday");
        d4=r1.getString("thrusday");
        d5=r1.getString("friday");
        d6=r1.getString("saturday");
        d7=r1.getString("sunday");
        email_hos=r1.getString("email_hospital");
        hname=r1.getString("hname");
        lno=r1.getString("lno");
        haddress=r1.getString("haddress");
        hcontact=r1.getString("hcontact");
        emeregncy=r1.getString("emergency");
        gbeds=r1.getString("gbeds");
        acbeds=r1.getString("acbeds");
        hemail=r1.getString("hemail");
%>
<div class=" row">
    <div class="col-4 float-left">
        <h3>Name: <b><%= name %></b></h3>
       
       Conatct: <%= contact %> </br>
       Address: <%= address %></br>
       Email: <%= email %></br>
       Qualification: <%= qualification %></br>
       Specialisation: <%= specialisation %></br>
       timings: <%= time %></br>
       <% if(d1.equals("yes")) %>Monday
       <% if(d2.equals("yes")) %>Tuesday
       <% if(d3.equals("yes")) %>Wednesday
       <% if(d4.equals("yes")) %>Thrusday
       <% if(d5.equals("yes")) %>Friday
       <% if(d6.equals("yes")) %>Saturday
       <% if(d7.equals("yes")) %>Sunday
       email of Hospital: <%= email_hos %>
       <hr >
</div>
       
       <div class="col-4 float-right">
           <h3>Hospital Name: <b><%= hname %></b></h3>
       Licence Number: <%= lno %><br>
       Conatct: <%= hcontact %> </br>
       Address: <%= haddress %></br>
       Email: <%= hemail %></br>
       emergency: <%= emeregncy %></br>
       General Beds: <%= gbeds %></br>
       Ac Beds: <%= acbeds %><br>
       <hr >
</div>
</div>
     <%  
    }

%>