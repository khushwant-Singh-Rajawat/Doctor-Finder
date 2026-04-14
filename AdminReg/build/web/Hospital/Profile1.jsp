<%@page import="kushwant.doctorfinder.MyLib"%>
<%@include file="h1.jsp" %>
<%@page import="java.sql.*" %>
<h1>Profile</h1>
<%
     MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    String s1="Select * from hospital_data where hemail=?";
    PreparedStatement p1=cn.prepareStatement(s1);
    p1.setString(1,e1);
    ResultSet r1=p1.executeQuery();
    if(r1.next())
    {
        String name,lno,address,contact,emergency,gbeds,acbeds; 
        name=r1.getString("hname");
        lno=r1.getString("lno");
        address=r1.getString("haddress");
        contact=r1.getString("hcontact");
        emergency=r1.getString("emergency");
        gbeds=r1.getString("gbeds");
        acbeds=r1.getString("acbeds");
        %>
        <form method="post" action="Profile2.jsp">
            <p>Name: <input type="text" name="T1" value="<%= name %>"<br>
            <p>license Number <input type="text" name="T2" value="<%= lno %>" <br>
            <p>Address: <input type="text" name="T3" value="<%= address %>"<br>
            <p>Contact: <input type="text" name="T4" value="<%= contact %>"<br>
            <p>Emergency <input type="text" name="T5" value="<%= emergency %>"<br>
            <p>General Beds: <input type="text" name="T6" value="<%= gbeds %>"<br>
            <p>Ac Beds: <input type="text" name="T7" value="<%= acbeds %>"<br>
        <p><button type="submit">Save Changes</button></p>
        </form>
        <p><a href="HospitalHome.jsp">Cancel</a></p>
        <%
    }
    else
    {
        %>
        <h3>Data doesn't exist</h3>
        <%
    }        
%>
<%@include file="h2.jsp" %>