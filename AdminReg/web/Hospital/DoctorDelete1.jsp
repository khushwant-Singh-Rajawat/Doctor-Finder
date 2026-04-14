<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<%@include file="h1.jsp" %>
<h1>Delete Doctor</h1>
    <%

    String name,contact,address,email,qualification,specialisation,time,d1,d2,d3,d4,d5,d6,d7;
    name=request.getParameter("T1");
    contact=request.getParameter("T2");
    address=request.getParameter("T3");
    specialisation=request.getParameter("T4");
    qualification=request.getParameter("T5");
    email=request.getParameter("T6");
    time=request.getParameter("T9");
    d1=request.getParameter("T10");
    d2=request.getParameter("T11");
    d3=request.getParameter("T12");
    d4=request.getParameter("T13");
    d5=request.getParameter("T14");
    d6=request.getParameter("T15");
    d7=request.getParameter("T16");
    
    if(d1==null) d1="no"; else d1="yes";
   if(d2==null) d2="no"; else d2="yes";
   if(d3==null) d3="no"; else d3="yes";
   if(d4==null) d4="no"; else d4="yes";
   if(d5==null) d5="no"; else d5="yes";
   if(d6==null) d6="no"; else d6="yes";
   if(d7==null) d7="no"; else d7="yes";
    
    String msg="";
    
        if(name==null)
             {
                msg="Select Doctor First";
             }
        else
             {
                //connect JSP with mysql server
                //load mysql driver
                 MyLib obj=new MyLib();
    Connection cn=obj.createConnection();


                String s1="delete from doctordata where demail=?";
    
                PreparedStatement p1=cn.prepareStatement(s1);

                p1.setString(1, email);
                
                
                int a=p1.executeUpdate();
             
                if(a==1)
                {
                    msg="Delete Successfully";
                }
                else
                {
                    msg="ERROR:Try Again";
                }

            }
   
 %>
 <h4><%= msg%> </h2>
 <h5><a href="ShowDoctor.jsp">Continue</a></h5>
 <%@include file="h2.jsp" %>