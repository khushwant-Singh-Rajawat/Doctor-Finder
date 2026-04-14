<%@page import="kushwant.doctorfinder.MyLib"%>
<%@include file="s1.jsp" %>
<%@page import="java.sql.*" %>

<h3>Delete Shop</h3>

<%
    String d=request.getParameter("H1");
    if(d==null)
    {
        %>
        <h3>Select Shop First</h3>
        <%
    }
    else
    {
         MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
        
        String s1="select * from shopdata where email=?";
        PreparedStatement p1=cn.prepareStatement(s1);
        p1.setString(1, d);
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
                   
                   <form  method="post" action="ShopDelete1.jsp">
            
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

                    <br>
            <p>
            <input type="submit" name="B1" id="btn1" value="Delete"/>
            </p>
   </form>
    <%
        }
       else
       {
               %>
                   <h3>No Data Found</h3>
               <%
       }
    } 
    %>
    <h2>
        <a href="showShop.jsp">Back</a>
    </h2>
   <%@include file="s2.jsp" %>