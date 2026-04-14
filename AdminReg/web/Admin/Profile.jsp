<%@page import="kushwant.doctorfinder.MyLib"%>
<%@include file="a1.jsp" %>
<%@page import="java.sql.*" %>
<h1>Profile</h1>
<%

 MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    String s1="Select * from admindata where email=?";
    PreparedStatement p1=cn.prepareStatement(s1);
    p1.setString(1,e1);
    ResultSet r1=p1.executeQuery();
    if(r1.next())
    {
        String name,address,contact;
        name=r1.getString("name");
        address=r1.getString("address");
        contact=r1.getString("contact");
        %>
        <h3><%= name %></h3>
        <p>
            Address: <%= address %><br>
            contact: <%= contact %><br>
            Email: <%= e1 %><br>
        </p>
        <p><a href="Profile1.jsp">Edit</a></p>
        <p><a href="AdminHome.jsp">Back</a></p>
        <%
    }
    else
    {
        %>
        <h3>Data doesn't exist</h3>
        <%
    }        
%>
<%@include file="a2.jsp" %>