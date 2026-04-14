<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<%@include file="a1.jsp" %>
<h1>Update Profile</h1>
<%
    String name,contact,address,email;
    name=request.getParameter("T1");
    contact=request.getParameter("T2");
    address=request.getParameter("T3");
    String msg="";
    if(name==null)
    {
        msg="Select profile First";
    }
    else
    {
        
                //connect JSP with mysql server
                //load mysql driver
                 MyLib obj=new MyLib();
    Connection cn=obj.createConnection();

                String s1="update admindata set name=?,contact=?,address=? where email=?";
                
                PreparedStatement p1=cn.prepareStatement(s1);

                p1.setString(1, name);
                p1.setString(2, contact);
                p1.setString(3, address);
                p1.setString(4, e1);
                
                int a=p1.executeUpdate();
             
                if(a==1)
                {
                    msg="Update Successfully";
                }
                else
                {
                    msg="ERROR:Try Again";
                }

            }
   
 %>
 <h4><%= msg%> </h2>
 <h5><a href="AdminHome.jsp">Continue</a></h5>
 <%@include file="a2.jsp" %>