<%@include file="c1.jsp" %>
<%@page import="kushwant.doctorfinder.MyLib"%>
<%@ page import="java.sql.*" %>

<h1><b>Hospitals</b></h1>
<h3><a href="HospitalReg.jsp">Add New Hospital</a></h3>
<div class="index" >
    <div class="row" style="display:flex; ">
 
<%
     MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    // 
    String s1="Select * from hospital_data";
    PreparedStatement p1=cn.prepareStatement(s1);
    
    ResultSet r1=p1.executeQuery();
    
    while(r1.next())
    {
        String name,lno,address,contact,emergency,gbeds,abeds,email;
        name=r1.getString("hname");
        address=r1.getString("haddress");
        lno=r1.getString("lno");
        email=r1.getString("hemail");
         contact=r1.getString("hcontact");
         emergency=r1.getString("emergency");
          gbeds=r1.getString("gbeds");
           abeds=r1.getString("acbeds");
 %>
 <div class="col-4" style="margin-bottom: 100px;">
        <h3><b>Name = <%= name %></b></h3>
       <P style="font-size: 20px; font-family: sans-serif">
 
         <b>License Number:</b> <%= lno %><br>
         <b>Address:</b> <%= address %>  </br>
         <b>Contact:</b><%= contact %></br>
         <b>Emergency:</b> <%= emergency %><br/>
         <b>General beds: </b><%= gbeds%> <br/>
         <b>Ac Beds:</b> <%= abeds%> <br/>
         <b>Email: </b><%= email%><br/>
 </p>
 
 </div>
     <%
}
    %>
    </div>
</div>
    
    <%@include file="c2.jsp" %>