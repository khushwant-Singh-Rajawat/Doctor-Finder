<%@page import="kushwant.doctorfinder.MyLib"%>
<%@include file="m1.jsp" %>
<%@page import="java.sql.*" %>
<div class="medicine" style="margin-left: 50px;">
     <hr>
<h3>Delete Shop</h3>

<%
    String d=request.getParameter("H1");
    if(d==null)
    {
        %>
        <h3>Select Medicine First</h3>
        <%
    }
    else
    {
         MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
        
        String s1="select * from medicines_data where email=?";
        PreparedStatement p1=cn.prepareStatement(s1);
        p1.setString(1, d);
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
                   
                   <form  method="post" action="DelMed1.jsp">
                       
            <p>Medicine Name: <input value="<%= med_name %>" type="text" name="T1" id="txt1"/><span id="sp1"></span></p>
<p>Generic Name: <input value="<%= gen_name %>" type="text" name="T2" id="txt2"/><span id="sp2"></span></p>
<p>Manufacturer: <input value="<%= manufacture %>" type="text" name="T3" id="txt3"/><span id="sp3"></span></p>
<p>Batch Number: <input value="<%= batch_no %>" type="text" name="T4" id="txt4"/><span id="sp4"></span></p>
<p>Expiration Date: <input value="<%= exp_date %>" type="date" name="T5" id="txt5"/><span id="sp5"></span></p>
<p>Price: <input value="<%= price %>" type="text" name="T6" id="txt6" /><span id="sp6"></span></p>
<p>Quantity: <input value="<%= qty %>" type="text" name="T7" id="txt7" /><span id="sp7"></span></p>
<p>Unit: <input value="<%= unit %>" type="text" name="T8" id="txt8" /><span id="sp8"></span></p>
<p>Category: <input value="<%= ctg %>" type="text" name="T9" id="txt9" /><span id="sp9"></span></p>
        <p>Description: <input value="<%= des %>" type="text" name="T10" id="txt10" /><span id="sp10"></span></p>
        <p>Email: <input value="<%= email %>" readonly type="text" name="T11" id="txt11" /><span id="sp11"></span></p>
            
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
        <a href="showmedicine.jsp">Back</a>
    </h2>
</div>
   <%@include file="m2.jsp" %>