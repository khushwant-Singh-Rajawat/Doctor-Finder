<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<%@include file="h1.jsp" %>
<h1>delete hospital</h1>
    <%
    String ee=request.getParameter("H1");
    if(ee==null)
    {
    %>
        <h3>Select hospital First</h3>
    <%
    }
else
{
         MyLib obj=new MyLib();
    Connection cn=obj.createConnection();

        String s1 = "select * from hospital_data where hemail=?";
        PreparedStatement p1=cn.prepareStatement(s1);
        p1.setString(1, ee);
        
       ResultSet r1=p1.executeQuery();
        
        if(r1.next())
        {
            String name,lno,address,contact,emergency,gbeds,acbeds,email;
                name=r1.getString("hname");
                lno=r1.getString("lno");
                address=r1.getString("haddress");
                contact=r1.getString("hcontact");
                emergency=r1.getString("Emergency");
                gbeds=r1.getString("gbeds");
                acbeds=r1.getString("acbeds");
                email=r1.getString("email");
                   %>
                   
                   <form  method="post" action="delete1.jsp">
                <p>Name<input value="<%= name %>" type="text" name="T1" id="txt1"/>
        <span id="sp1"></span>
    </p>
    <p>License Number<input value="<%= lno %>" type="text" name="T2" id="txt2"/>
        <span id="sp2"></span>
    </p>
<p>Address<input type="text" value="<%= address %>" name="T3" id="txt3"/>
    <span id="sp3"></span>
</p>
<p>Contact<input value="<%= contact %>" type="text" name="T4" id="txt4"/>
    <span id="sp4"></span>
</p>
<p>
    Emergency
    <%
    if(emergency.equalsIgnoreCase("yes"))
    {
        %>
        <input type="radio" checked name="T5" value="yes"/>yes
         <input type="radio" name="T5" value="no"/>No
         <%
    }
    else
    {
        %>
         <input type="radio" name="T5" value="yes"/>yes
         <input type="radio" name="T5" value="no"/>No
         <%
    }
         %>
   </p>

<p>
    General Beds<input value="<%= gbeds %>" type="text" name="T6"/>
</p>
<p>
    Ac Beds<input value="<%= acbeds %>" type="text" name="T7"/>
</p>
<p>
    Email <input readonly name="T8" id="txt8" value="<%= ee %>" />
</p>
<p>
    <input type="submit" name="B1" id="btn1" value="Save Changes"/>
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
        <a href="ShowHospital.jsp">Back</a>
    </h2>
    <%@include file="h2.jsp" %>