<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<%@include file="m1.jsp" %>
<div class="medicine" style="margin-left: 50px;">
 
<h1>Update Medicine</h1>
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
   
    
    String msg=" ";
    
        if(email==null)
             {
                msg="Select Medicine First";
             }
        else
             {
                 
                //connect JSP with mysql server
                //load mysql driver
                 MyLib obj=new MyLib();
    Connection cn=obj.createConnection();

                String s1="update medicines_data set med_name=?,gen_name=?,manufacture=?,batch_no=?,exp_date=?,price=?,qty=?,unit=?,ctg=?,des=? where email=?";
    
                PreparedStatement p1=cn.prepareStatement(s1);
                
                 
    p1.setString(1, med_name);
    p1.setString(2, gen_name);
    p1.setString(3, manufacture);
    p1.setString(4, batch_no);
    p1.setDate(5, java.sql.Date.valueOf(exp_date));
    p1.setDouble(6, price);
    p1.setInt(7, qty);
    p1.setString(8, unit);
    p1.setString(9, ctg);
    p1.setString(10, des);
    p1.setString(11, email);
   
               
                
                int a=p1.executeUpdate();
             
                if(a!=1)
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
 <h5><a href="showmedicine.jsp">Continue</a></h5>
</div>
 <%@include file="m2.jsp" %>
