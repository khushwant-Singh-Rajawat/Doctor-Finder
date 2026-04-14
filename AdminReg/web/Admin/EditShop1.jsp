<%@page import="kushwant.doctorfinder.MyLib"%>
<%@include file="s1.jsp" %>
<%@page import="java.sql.*" %>

<h1>Update Shop</h1>
    <%

     String shop_name,address,phone,lic_no,lic_type,name,contact,email;
    shop_name = request.getParameter("T1");
    address= request.getParameter("T2");
    phone = request.getParameter("T3");
    lic_no= request.getParameter("T4");
    lic_type= request.getParameter("T5");
    name = request.getParameter("T6");
    contact=request.getParameter("T7");
    email=request.getParameter("T8");
    
    
   
    
    String msg=" ";
    
        if(shop_name==null)
             {
                msg="Select Shop First";
             }
        else
             {
                //connect JSP with mysql server
                //load mysql driver
               MyLib obj=new MyLib();
               Connection cn=obj.createConnection();

                String s1="update shopdata set shop_name=?,address=?,phone=?,lic_no=?,lic_type=?,name=?,contact=? where email=?";
    
                PreparedStatement p1=cn.prepareStatement(s1);

                p1.setString(1, shop_name);
                p1.setString(2, address);
                p1.setString(3, phone);
                p1.setString(4, lic_no);
                p1.setString(5, lic_type);
                p1.setString(6, name);
                p1.setString(7, contact);
                p1.setString(8, email);
                
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
 <h5><a href="showShop.jsp">Continue</a></h5>
<%@include file="s2.jsp" %>