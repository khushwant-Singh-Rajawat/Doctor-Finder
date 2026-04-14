<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*"%>
<%@include file="h1.jsp" %>
<h1>Delete Hospital</h1>
<%
    //Receive From Data
    String name,lno,address,contact,emergency,gbeds,acbeds,email;
    name = request.getParameter("T1");
    lno=request.getParameter("T2");
    address=request.getParameter("T3");
    contact=request.getParameter("T4");
    emergency=request.getParameter("T5");
    gbeds=request.getParameter("T6");
    acbeds=request.getParameter("T7");
    email = request.getParameter("T8");
 
    String msg = "";
    if(name==null)
    {
        msg="Select Hospital first";
    }
    else
    {
    //connect JSP with mysql server
    //load mysql driver
     MyLib obj=new MyLib();
    Connection cn=obj.createConnection();

    //create sql commands
    String s1 = "delete from hospital_data where hemail=?";
    
    //create statement
    PreparedStatement p1=cn.prepareStatement(s1);
    
    //set data in place of ?
    p1.setString(1, email);
   
    
    //send data to table
    int a=p1.executeUpdate();
    
    //create response
    if(a==1)
    {
        msg="Hospital data is delete";
    }
    
    else
    {
        msg="ERROR: Not delete";
    }
 }
%>
<h3><%= msg %></h3>
<h2><a href="ShowHospital.jsp">Continue</a></h2>
<%@include file="h2.jsp" %>