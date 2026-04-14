 <%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<%@include file="s1.jsp" %>
<div  style="margin-left: 50px;">
 
<h1><b>Profile</b></h1>
<%

    MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    String s1="Select * from shopdata where email=?";
    PreparedStatement p1=cn.prepareStatement(s1);
    p1.setString(1,e1);
    ResultSet r1=p1.executeQuery();
    if(r1.next())
    {
       String shop_name,address,phone,lic_no,lic_type,name,contact,email,pass,confirm_pass;
       shop_name=r1.getString("shop_name");
       address=r1.getString("address");
       phone=r1.getString("phone");
       lic_no=r1.getString("lic_no");
       lic_type=r1.getString("lic_type");
       name=r1.getString("name");
       contact=r1.getString("contact");
        email=r1.getString("email");
        %>
        <h3><b>Shop Name:</b> <%= shop_name %></h3>
       <h3>
           <b>Address:</b> <%= address %></br>
           <b>Phone No.:</b> <%= phone %></br>
           <b>License Number:</b> <%= lic_no %></br>
           <b>License Type:</b> <%= lic_type %></br>
           <b>Owner Name:</b> <%= name %></br>
           <b>Conatct: </b><%= contact %> </br>
           <b>Email: </b><%= email %></br>
        </h3>
        <p><a href="ShopProfile1.jsp"  style="margin-right: 10px; display: inline-block;">Edit</a></p>
        <p><a href="MedicalShop_Home.jsp"  style="display: inline-block;">Back</a></p>
        <%
    }
    else
    {
        %>
        <h3>Data doesn't exist</h3>
        <%
    }        
%>
</div>
<%@include file="s2.jsp" %>