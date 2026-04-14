<%@include file="s1.jsp" %>
<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>

<h1>Show Shop</h1>
<a href="MedicineReg.jsp">Add New Shop</a>
<%
    MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    
    String s1="select * from shopdata";
    PreparedStatement p1=cn.prepareStatement(s1);
    
    ResultSet r1=p1.executeQuery();
    
    while(r1.next())
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
       <form method="post" action="EditShop.jsp">
           <input type="hidden" value="<%= email %>" name="H1"/>
           <input type="submit" value="edit" name="B1">
       </form> 
           
           <form method="post" action="ShopDelete.jsp">
           <input type="hidden" value="<%= email %>" name="H1"/>
           <input type="submit" value="delete" name="B1">
       </form> 
     <%  
    }

%>
<%@include file="s2.jsp" %>
