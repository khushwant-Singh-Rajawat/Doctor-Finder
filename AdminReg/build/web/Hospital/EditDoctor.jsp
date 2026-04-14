<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<%@include file="h1.jsp" %>
<h3>Edit and Save</h3>

<%
    String d=request.getParameter("H1");
    if(d==null)
    {
        %>
        <h3>Select Doctor First</h3>
        <%
    }
    else
    { MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
        
        String s1="select * from doctordata where demail=?";
        PreparedStatement p1=cn.prepareStatement(s1);
        p1.setString(1, d);
        ResultSet r1=p1.executeQuery();
        
        if(r1.next())
        {
            String name,contact,address,email,qualification,specialisation,timings,d1,d2,d3,d4,d5,d6,d7;
            name=r1.getString("dname");
            contact=r1.getString("dcontact");
            address=r1.getString("daddress");
            specialisation=r1.getString("specialisation");
            qualification=r1.getString("qualification");
            email=r1.getString("demail");
            timings=r1.getString("timings");
            d1=r1.getString("monday");
            d2=r1.getString("tuesday");
            d3=r1.getString("wednesday");
            d4=r1.getString("thrusday");
            d5=r1.getString("friday");
            d6=r1.getString("saturday");
            d7=r1.getString("sunday");
          
                   %>
                   
        <form  method="post" action="EditDoctor1.jsp">
            
                <p>Name<input value="<%= name %>" type="text" name="T1" id="txt1"/>
                    <span id="sp1"></span>
                </p>
                <p>Contact<input value="<%= contact %>" type="text" name="T2" id="txt2"/>
                    <span id="sp2"></span>
                </p>
                <p>Address<input type="text" value="<%= address %>" name="T3" id="txt3"/>
                    <span id="sp3"></span>
                </p>
                <p>Email<input readonly value="<%= email %>" type="text" name="T6" id="txt6"/>
                    <span id="sp6"></span>
                </p>

                <p>
                    Qualification<input value="<%= qualification %>" type="text" name="T5"/>
                </p>
                <p>
                    specialisation <input value="<%= specialisation%>" name="T4" id="txt4" />
                </p>

                <p>
                    Timing <input value="<%= timings%>" name="T9" id="txt9" />
                </p>
                
            <p>Select Week</p>
                    
               <%
                    if(d1.equalsIgnoreCase("yes"))
                    {
                        %>
                        <input type="checkbox" checked name="T10" value="yes">Monday
                        <%
                    }
                    else
                    {
                        %>
                        <input type="checkbox" name="T10" value="no">Monday
                        <%
                    }
                 
                    if(d2.equalsIgnoreCase("yes"))
                    {
                         
                        %>
                        <input type="checkbox" checked name="T11" value="yes">tuesday
                        <%
                    }
                    else
                    {
                        %>
                        <input type="checkbox"  name="T11" value="no">tuesday
                        <%
                    }
                    
                   if(d3.equalsIgnoreCase("yes"))
                    {
                        %>
                        <input type="checkbox" checked name="T12" value="yes">wednesday
                        <%
                    }
                    else
                    {
                        %>
                        <input type="checkbox"  name="T12" value="no">wednesday
                        <%
                    }
                   
                     if(d4.equalsIgnoreCase("yes"))
                    {
                        %>
                        <input type="checkbox" checked name="T13" value="yes">thrusday
                        <%
                    }
                     else
                    {
                        %>
                        <input type="checkbox"  name="T13" value="no">thrusday
                        <%
                    }
                    
                   
                    if(d5.equalsIgnoreCase("yes"))
                    {
                         
                        %>
                        <input type="checkbox" checked name="T14" value="yes">friday
                        <%
                    }
                    else
                    {
                        %>
                        <input type="checkbox"  name="T14" value="no">friday
                        <%
                    }
                    
                    if(d6.equalsIgnoreCase("yes"))
                    {
                         
                        %>
                        <input type="checkbox" checked name="T15" value="yes">Saturday
                        <%
                    }
                    else
                    {
                        %>
                        <input type="checkbox"  name="T15" value="no">Saturday
                        <%
                    }
                    
                    if(d7.equalsIgnoreCase("yes"))
                    {
                         if(d1==null) d1="no"; else d1="yes";
                        %>
                        <input type="checkbox" checked name="T16" value="yes">Sunday
                        <%
                    }
                    else
                    {
                        %>
                        <input type="checkbox"  name="T16" value="no">sunday
                        <%
                    }
                        %>
                   
                      
                    
                    
                    <br><br>
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
        <a href="ShowDoctor.jsp">Back</a>
    </h2>
    <%@include file="h2.jsp" %>