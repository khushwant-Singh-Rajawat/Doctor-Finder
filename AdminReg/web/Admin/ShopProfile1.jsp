<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<%@include file="s1.jsp" %>
<h1>Profile</h1>
<%
 MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    String s1="Select * from shopdata where email=?";
    PreparedStatement p1=cn.prepareStatement(s1);
    p1.setString(1,e1);
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
        <form method="post" action="ShopProfile2.jsp">
          
                <p>Shop Name: <input value="<%= shop_name %>" type="text" name="T1" id="txt1"/>
                    <span id="sp1"></span>
                </p>
                <p>Address: <input type="text" value="<%= address %>" name="T2" id="txt2"/>
                    <span id="sp5"></span>
                </p>
                <p>Phone No.: <input type="text" value="<%= phone %>" name="T3" id="txt3"/>
                    <span id="sp4"></span>
                </p>
                <p>License Number: <input type="text" value="<%= lic_no %>" name="T4" id="txt4"/>
                    <span id="sp3"></span>
                </p>
                <p>License Type: <input type="text" value="<%= lic_type %>" name="T5" id="txt5"/>
                    <span id="sp3"></span>
                </p>
                <p>Owner Name: <input value="<%= name %>" type="text" name="T6" id="txt6"/>
                    <span id="sp2"></span>
                </p>
                <p>Contact: <input type="text" value="<%= contact %>" name="T7" id="txt7"/>
                    <span id="sp4"></span>
                </p>
                
                <p>Email<input readonly value="<%= email %>" type="text" name="T8" id="txt8"/>
                    <span id="sp6"></span>
                </p>
                 <p><button type="submit">Save Changes</button></p>
                    <br>
        </form>
            
                    <p><a href="MedicalShop_Home.jsp">Cancel</a></p>
        <%
    }
    else
    {
        %>
        <h3>Data doesn't exist</h3>
        <%
    }        
%>
<%@include file="s2.jsp" %>