<%@page import="kushwant.doctorfinder.MyLib"%>
<%@include file="m1.jsp" %>
<%@page import="java.sql.*" %>
<div class="medicine" style="margin-left: 50px;">
     <hr>
<h1>Delete Shop</h1>
    <%

    String med_name,gen_name,manufacture,batch_no,exp_date,unit,ctg,des,email;
    med_name = request.getParameter("T1");
     gen_name= request.getParameter("T2");
     manufacture= request.getParameter("T3");
     batch_no= request.getParameter("T4");
     exp_date= request.getParameter("T5");
    double price= Double.parseDouble(request.getParameter("T6"));
     int qty= Integer.parseInt( request.getParameter("T7"));
     unit= request.getParameter("T8");
     ctg= request.getParameter("T9");
     des= request.getParameter("T10");
     email=request.getParameter("T11");
    
    String msg="";
    
        if(email==null)
             {
                msg="Select medicine First";
             }
        else
             {
                //connect JSP with mysql server
                //load mysql driver
                MyLib obj=new MyLib();
    Connection cn=obj.createConnection();


                String s1="delete from medicines_data where email=?";
    
                PreparedStatement p1=cn.prepareStatement(s1);

                p1.setString(1, email);
                
                
                int a=p1.executeUpdate();
             
                if(a!=1)
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
 <h5><a href="showmedicine.jsp">Continue</a></h5>
</div>
<%@include file="m2.jsp" %>