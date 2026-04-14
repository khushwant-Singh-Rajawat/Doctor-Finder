<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<%@include file="h1.jsp" %>
<h1>Show Doctor</h1>
<a href="DoctorReg.jsp">Add New Doctor</a>
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
       <h3>name <%= name %></h3>
       <P>
       Conatct: <%= contact %> </br>
       Address: <%= address %></br>
       Email: <%= email %></br>
       Qualification: <%= qualification %></br>
       Specialisation: <%= specialisation %></br>
       timings: <%= time %></br>
       <% if(d1.equals("yes")) %>Monday
       <% if(d2.equals("yes")) %>Tuesday
       <% if(d3.equals("yes")) %>Wednesday
       <% if(d4.equals("yes")) %>Thrusday
       <% if(d5.equals("yes")) %>Friday
       <% if(d6.equals("yes")) %>Saturday
       <% if(d7.equals("yes")) %>Sunday
       
       
       
       </p>
       <form method="post" action="EditDoctor.jsp">
           <input type="hidden" value="<%= email %>" name="H1"/>
           <input type="submit" value="edit" name="B1">
       </form> 
           
           <form method="post" action="DoctorDelete.jsp">
           <input type="hidden" value="<%= email %>" name="H1"/>
           <input type="submit" value="delete" name="B1">
       </form> 
     <%  
    }

%>
<%@include file="h2.jsp" %>