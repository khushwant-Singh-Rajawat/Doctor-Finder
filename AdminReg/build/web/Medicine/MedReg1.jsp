<%@include file="m1.jsp" %>
<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*"%>
<div class="medicine" style="margin-left: 50px;">
 
<h1>Medicine Registration</h1>
<%
    //Receive From Data
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
    String msg = "";

    //connect JSP with mysql server
    //load mysql driver
    MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    //create sql commands
    String s1 = "insert into medicines_data values(0,?,?,?,?,?,?,?,?,?,?,?)";
    
    //create statement
    PreparedStatement p1=cn.prepareStatement(s1);
    
    //set data in place of ?
    
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
   
    //send data to table
    int a=p1.executeUpdate();
    
    //create response
    if(a==1)
    {
        msg="Data save and login created";
    }
    else
    {
        msg="ERROR: Not data saved and no login created";
    }
%>
<h3><%= msg %></h3>
<h2><a href="MedReg.jsp">Continue</a></h2>
</div>
<%@include file="m2.jsp" %>