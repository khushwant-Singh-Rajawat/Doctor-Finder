<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<%
     String hname=request.getParameter("q");
    if(hname==null) hname=" ";
    MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    
    String s1="select * from medicine_with_medical where med_name like '%"+hname+"%'";
    PreparedStatement p1=cn.prepareStatement(s1);
    ResultSet r1=p1.executeQuery();
    
    while(r1.next())
    {
        String med_name,com_name,price,lno,em_med, email_meddata,shop_name,ow_name,contact,address,email,lic_no;
        med_name=r1.getString("med_name");
         com_name=r1.getString("com_name");
        lno=r1.getString("lno");
        price=r1.getString("price");
        em_med=r1.getString("email_of_medical");
        shop_name=r1.getString("shop_name");
         ow_name=r1.getString("ow_name");
        lic_no=r1.getString("lic_no");
        contact=r1.getString("contact");
        address=r1.getString("address");
        email=r1.getString("email");
        email_meddata= r1.getString("email_med");
%>
<div class="row border">
    <div class="col-4 float-left">
       <h3>Medicine Name: <%= med_name %></h3>
       <P>
       Company Name <%= com_name %><br>
       License Number: <%= lno %><br>
       Price: <%= price %> <br>
       Email of Medicine: <%= em_med %><br>
       </p>
    </div>
       <div class="col-4 float-right">
        <h3>Shop Name: <%= shop_name %></h3>
       <P>
       Owner Name <%= ow_name %></br>
       License Number: <%= lic_no %></br>
       Conatct: <%= contact %> </br>
       Address: <%= address %></br>
       Email: <%= email %><br>
       Email medical: <%= email_meddata %><br> 
       </p>
       </div>    
</div>
     <%  
    }
%>
