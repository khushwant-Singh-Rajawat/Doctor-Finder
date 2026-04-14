<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<%@include file="a1.jsp" %>
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
        <form method="post" action="Profile2.jsp">
            <p>Name: <input type="text" name="T1" value="<%= name %>" /></p>
            <p>Address: <input type="text" name="T2" value="<%= address %>" /></p>
            <p>Contact <input type="text" name="T3" value="<%= contact %>" /></p>
            <p><button type="submit">Save Changes</button></p>
        </form>
        <p><a href="AdminHome.jsp">Cancel</a></p>
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