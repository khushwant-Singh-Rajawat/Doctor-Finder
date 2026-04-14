<%@include file="c1.jsp" %>
<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<h1><b>Show Doctor</b></h1>
&nbsp;
<h3><a href="DoctorReg.jsp">Add New Doctor</a></h3>&nbsp;
<div class="index" >
    <div class="row" style="display:flex; ">
    
<%
     MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    String s1="select * from doctordata";
    PreparedStatement p1=cn.prepareStatement(s1);
    
    ResultSet r1=p1.executeQuery();
    
    while(r1.next())
    {
        String name,contact,address,email,qualification,specialisation,time,d1,d2,d3,d4,d5,d6,d7;
        name=r1.getString("dname");
        contact=r1.getString("dcontact");
        address=r1.getString("daddress");
        email=r1.getString("demail");
        qualification=r1.getString("qualification");
        specialisation=r1.getString("specialisation");
        time=r1.getString("timings");
        d1=r1.getString("monday");
        d2=r1.getString("tuesday");
        d3=r1.getString("wednesday");
        d4=r1.getString("thrusday");
        d5=r1.getString("friday");
        d6=r1.getString("saturday");
        d7=r1.getString("sunday");
%>
    <div class="col-4" style="margin-bottom: 100px;">
        <h3><b>Name = <%= name %></b></h3>&nbsp;
       <P style="font-size: 20px; font-family: sans-serif">
           <b>Conatct:</b> <%= contact %> </br>
           <b>Address:</b> <%= address %></br>
           <b>Email: </b><%= email %></br>
           <b>Qualification: </b><%= qualification %></br>
           <b>Specialisation:</b> <%= specialisation %></br>
           <b>timings:</b> <%= time %></br>
           <b> Available: </b>
       <% if(d1.equals("yes")) %>Monday
       <% if(d2.equals("yes")) %>Tuesday
       <% if(d3.equals("yes")) %>Wednesday
       <% if(d4.equals("yes")) %>Thrusday
       <% if(d5.equals("yes")) %>Friday
       <% if(d6.equals("yes")) %>Saturday
       <% if(d7.equals("yes")) %>Sunday

       </p> 
       
        </div>
       
     <%  
           }

%>
   
    </div>
</div>

<%@include file="c2.jsp" %>