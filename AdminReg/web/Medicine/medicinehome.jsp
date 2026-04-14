<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<%@include file="m1.jsp" %>
<div class="medicine" style="margin-left: 50px;">
 
<h1>Profile</h1>
<%
      MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    
 String s1="Select * from medicines where email=?";
 PreparedStatement p1=cn.prepareStatement(s1);
 p1.setString(1, e1);
 ResultSet r1=p1.executeQuery();
    if(r1.next())
    {
        String med_name,gen_name,manufacture,batch_no,exp_date,unit,ctg,des,email;
        double price;
        int qty;
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
       Email: <%= e1 %>
            
        </p>
        <p><a href="EditMed.jsp">Edit</a></p>
        <p><a href="medicinehome.jsp">Back</a></p>
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
<%@include file="m2.jsp" %>
</div>  