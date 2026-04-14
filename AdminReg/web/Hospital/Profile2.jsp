<%@page import="kushwant.doctorfinder.MyLib"%>
<%@include file="h1.jsp" %>
<%@page import="java.sql.*" %>
<h1>Update Profile</h1>
<%
 String name,lno,address,contact,emergency,gbeds,acbeds; 
        name=request.getParameter("T1");
        lno=request.getParameter("T2");
        address=request.getParameter("T3");
        contact=request.getParameter("T4");
        emergency=request.getParameter("T5");
        gbeds=request.getParameter("T6");
        acbeds=request.getParameter("T7");
       
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

                String s1="update hospital_data set hname=?,lno=?,haddress=?,hcontact=?,emergency=?,gbeds=?,acbeds=? where hemail=?";
                
                PreparedStatement p1=cn.prepareStatement(s1);

                p1.setString(1, name);
                p1.setString(2, lno);
                p1.setString(3, address);
                p1.setString(4, contact);
                p1.setString(5, emergency);
                p1.setString(6, gbeds);
                p1.setString(7, acbeds);
                p1.setString(8, e1);
                
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
 <h5><a href="HospitalHome.jsp">Continue</a></h5>
 <%@include file="h2.jsp" %>