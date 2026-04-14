<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<%@include file="s1.jsp" %>
<h1>Profile</h1>
<%
    
  MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
 
 String s1="Select * from shopdata where email=?";
 PreparedStatement p1=cn.prepareStatement(s1);
 p1.setString(1, e1);
 ResultSet r1=p1.executeQuery();
    if(r1.next())
    {
        
       String shop_name,address,phone,lic_no,lic_type,name,contact,email,pass,confirm_pass;
       shop_name=r1.getString("shop_name");
       address=r1.getString("address");
       phone=r1.getString("phone");
       lic_no=r1.getString("lic_no");
       lic_type=r1.getString("lic_type");
       name=r1.getString("name");
       contact=r1.getString("contact");
        email=r1.getString("email");
        
        %>
        <h3>Shop Name: <%= shop_name %></h3>
       <P>
       Address: <%= address %></br>
       Phone No.: <%= phone %></br>
       License Number: <%= lic_no %></br>
       License Type <%= lic_type %></br>
       Owner Name <%= name %></br>
       Conatct: <%= contact %> </br>
       Email: <%= email %></br>
        </p>
        <p><a href="ShopProfile1.jsp">Edit</a></p>
        <p><a href="MedicalShop_Home.jsp">Back</a></p>
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
<%@include file="s2.jsp" %>