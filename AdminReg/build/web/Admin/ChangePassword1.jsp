<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*"%>
<%@include file="a1.jsp" %>

<%
    String oldpass=request.getParameter("T1");
    String newpass=request.getParameter("T2");
    if(oldpass==null || newpass==null)
    {
        response.sendRedirect("ChangePassword.jsp");
    }
    else
    {
    %>
    <h1>Change Password</h1>
    <%
    
    
     MyLib obj=new MyLib();
     Connection cn=obj.createConnection();
    String sql="update logindata set password=? where email=? and password=?";
    PreparedStatement p1=cn.prepareStatement(sql);
    p1.setString(1, newpass);
    p1.setString(2, e1);
    p1.setString(3, oldpass);
    int a=p1.executeUpdate();
    if(a==1)
    {
        %>
        <h3>Password changed</h3>
        <%
    }
    else
    {
        %>
        <h3>Incorrect Old Password</h3>
        <%
    }
}
%>
<h2><a href="AdminHome.jsp">Go to Home Page</a></h2>
<%@include file="a2.jsp" %>