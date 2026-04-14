<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*"%>
<%@include file="s1.jsp" %>
<h1>Medicine Registration</h1>
<%
    //Receive From Data
    String shop_name,address,phone,lic_no,lic_type,name,contact,email,pass,confirm_pass;
    shop_name = request.getParameter("T1");
    address= request.getParameter("T2");
    phone = request.getParameter("T3");
    lic_no= request.getParameter("T4");
    lic_type= request.getParameter("T5");
    name = request.getParameter("T6");
    contact=request.getParameter("T7");
    email=request.getParameter("T8");
    pass=request.getParameter("T9");
    confirm_pass=request.getParameter("T10");
    
    String usertype = "MedicalShop";
    String msg = "";

    //connect JSP with mysql server
    //load mysql driver
    MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    //create sql commands
    String s1 = "insert into shopdata values(0,?,?,?,?,?,?,?,?)";
    String s2 = "insert into logindata values(?,?,?)";

    
    //create statement
    PreparedStatement p1=cn.prepareStatement(s1);
   PreparedStatement p2=cn.prepareStatement(s2);
    
    //set data in place of ?
  
    p1.setString(1, shop_name);
    p1.setString(2, address);
    p1.setString(3, phone);
    p1.setString(4, lic_no);
    p1.setString(5, lic_type);
    p1.setString(6, name);
    p1.setString(7, contact);
    p1.setString(8, email);
    
    p2.setString(1, email);
    p2.setString(2, pass);
    p2.setString(3, usertype);
    //send data to table
    int a=p1.executeUpdate();
   int b=p2.executeUpdate();
    
    //create response
    if(a==1 && b==1)
    {
        msg="Data save and login created";
    }
    else if(a==1)
    {
        msg="Only Data is Saved";
    }
    else if(b==1)
    {
        msg="only login is created";
    }
    else
    {
        msg="ERROR: Not data saved and no login created";
    }
%>
<h3><%= msg %></h3>
<h2><a href="MedicalReg.jsp">Continue</a></h2>
<%@include file="s2.jsp" %>
