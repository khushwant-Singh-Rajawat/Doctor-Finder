<%@page import="kushwant.doctorfinder.MyLib"%>
<%@ page import="java.sql.*" %>
<%@include file="a1.jsp" %>
<h1>Hospitals</h1>
<p><a href="HospitalReg.jsp">Add New Hospital</a></p>
<%
     MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    // 
    String s1="Select * from hospital_data";
    PreparedStatement p1=cn.prepareStatement(s1);
    
    ResultSet r1=p1.executeQuery();
    
    while(r1.next())
    {
        String name,lno,address,contact,em,gb,ab,email;
        name=r1.getString("hname");
        address=r1.getString("haddress");
        lno=r1.getString("lno");
        email=r1.getString("hemail");
 %>
 <h3>name <%= name %></h3>
 <p>
     License Number: <%= lno %><br>
     Address: <%= address %>  </br>
     Contact:</br>
     Emergency: <br/>
     General beds: <br/>
     Ac Beds: <br/>
     Email: <br/>
 </p>

 
     <%
}
    %>
    <%@include file="a2.jsp" %>
    