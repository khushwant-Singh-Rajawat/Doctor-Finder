<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<%@include file="h1.jsp" %>
<h1>Profile</h1>
<%
  MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
 
 String s1="Select * from hospital_data where hemail=?";
 PreparedStatement p1=cn.prepareStatement(s1);
 p1.setString(1, e1);
 ResultSet r1=p1.executeQuery();
    if(r1.next())
    {
        String name,lno,address,contact,emergency,gbeds,acbeds;
        name=r1.getString("hname");
        lno= r1.getString("lno");
        address=r1.getString("haddress");
        contact=r1.getString("hcontact");
        emergency= r1.getString("emergency");
        gbeds= r1.getString("gbeds");
        acbeds= r1.getString("acbeds");
        %>
        <h3><%= name %></h3>
        <p>
            Address: <%= address %><br>
            License Number: <%= lno %><br>
            contact: <%= contact %><br>
            Email: <%= e1 %><br>
            Emergency: <%= emergency %><br>
            general beds: <%= gbeds %><br>
            Ac Beds: <%= acbeds %><br>
        </p>
        <p><a href="Profile1.jsp">Edit</a></p>
        <p><a href="HospitalHome.jsp">Back</a></p>
        <%           
    } 
    else
{
    %>
    <h3>
        Data does not Exist
    </h3>
     <%
}
%>
<%@include file="h2.jsp" %>