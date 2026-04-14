<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*"%>
<%@include file="a1.jsp" %>
<h1>Admin Registration</h1>
<%
    //Receive From Data
    String name, address, contact, email, password, confirm_pass;
    name = request.getParameter("T1");
    address = request.getParameter("T2");
    contact = request.getParameter("T3");
    email = request.getParameter("T4");
    password = request.getParameter("T5");
    confirm_pass = request.getParameter("T6");
    String usertype = "admin";
    String msg = "";

    //connect JSP with mysql server
    //load mysql driver
     MyLib obj= new MyLib();
    Connection cn=obj.createConnection();

    //create sql commands
    String s1 = "insert into admindata values(?,?,?,?)";
    String s2="insert into logindata values(?,?,?)";
    
    //create statement
    PreparedStatement p1=cn.prepareStatement(s1);
    PreparedStatement p2=cn.prepareStatement(s2);
    
    //set data in place of ?
    p1.setString(1, name);
    p1.setString(2, address);
    p1.setString(3, contact);
    p1.setString(4, email);
    
    p2.setString(1, email);
    p2.setString(2, password);
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
<h2><a href="AdminReg.jsp">Continue</a></h2>
<%@include file="a2.jsp" %>
