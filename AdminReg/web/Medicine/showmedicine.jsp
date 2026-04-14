<%@page import="kushwant.doctorfinder.MyLib"%>
<%@include file="m1.jsp" %>
<%@page import="java.sql.*" %>
<div class="medicine" style="margin-left: 50px;">
    <h1><b>Show Medicine</b></h1>
&nbsp;&nbsp;
<h3><a href="MedReg.jsp">Add New Medicine</a></h3>
<div class="index" >
    <div class="row" style="display: flex;">
<%
     MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    
    String s1="select * from medicines_data where email=?";
    PreparedStatement p1=cn.prepareStatement(s1);
    p1.setString(1, e1);
    ResultSet r1=p1.executeQuery();
    
    while(r1.next())
    {
        String med_name,gen_name,manufacture,batch_no,exp_date,unit,ctg,des,email;
        double price;
        int qty,id;
        
        med_name=r1.getString("med_name");
         gen_name=r1.getString("gen_name");
         manufacture=r1.getString("manufacture");
         batch_no=r1.getString("batch_no");
         exp_date=r1.getString("exp_date");
         price=r1.getDouble("price");
         qty=r1.getInt("qty");
         unit=r1.getString("unit");
        ctg=r1.getString("ctg");
        des=r1.getString("des");
        email=r1.getString("email");
        
%>
<div class="col-4" style="margin-top:50px; ">
       <h3>Medicine Name: <%= med_name %></h3>
       <P>
       Generic Name: <%= gen_name %></br>
       Manufacturer: <%= manufacture %><br>
       Batch Number: <%= batch_no %></br>
       Expiery Date: <%= exp_date %> </br>
       Price: <%= price %> </br>
       Quantity: <%= qty %><br>
       Unit: <%= unit %><br>
       Category: <%= ctg %><br>
       Description: <%= des %><br>
       Email: <%= email %>
    
       </p>
       <form method="post" action="EditMed.jsp" style="margin-right: 10px; display: inline-block;">
           <input type="hidden" value="<%= email %>" name="H1"/>
           <input type="submit" value="edit" name="B1">
       </form> 
           
           <form method="post" action="DelMed.jsp" style="display: inline-block;" >
           <input type="hidden" value="<%= email %>" name="H1"/>
           <input type="submit" value="delete" name="B1">
       </form> 
</div>
     <%  
    }

%>
    </div>
</div>
</div>
<%@include file="m2.jsp" %>