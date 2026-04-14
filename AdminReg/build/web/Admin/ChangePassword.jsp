<%@page import="java.sql.*" %>
<%@include file="a1.jsp" %>
<h1>Change Password</h1>

<form method="post" action="ChangePassword1.jsp">
    <p>Old Password <input type="password" name="T1" /></p>
    <p>New Password <input type="password" name="T2" /></p>
    <p>Confirm Password <input type="password" name="T3" /></p>
    <p>
      <input type="submit" value="Change" name="B1" />
    </p>
</form>
<%@include file="a2.jsp" %>