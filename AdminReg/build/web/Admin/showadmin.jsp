<%@page import="kushwant.doctorfinder.MyLib"%>
<%@ page import="java.sql.*" %>
<%@include file="a1.jsp" %>
<h1>Admins</h1>
<p><a href="AdminReg.jsp">Add New Admin</a></p>
<%
     MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    // 
    String s1="Select * from admindata";
    PreparedStatement p1=cn.prepareStatement(s1);
    
    ResultSet r1=p1.executeQuery();
    
    while(r1.next())
    {
        String name,address,contact,email;
        name=r1.getString("name");
        address=r1.getString("address");
        contact=r1.getString("contact");
        email=r1.getString("email");
 %>
 <h3>Name:  <%= name %></h3>
 <p>

     Address: <%= address %>  </br>
     Contact: <%= contact%></br>
     Email: <%= email%> <br/>
 </p>

 
     <%
}
    %>
    <%@include file="a2.jsp" %>
    