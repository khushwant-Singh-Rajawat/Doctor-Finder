<%@page import="kushwant.doctorfinder.MyLib"%>
<%@ page import="java.sql.*" %>


<%
    String hname=request.getParameter("q");
    if(hname==null) hname=" ";
     MyLib obj=new MyLib();
    Connection cn=obj.createConnection();
    // 
    String s1="Select * from hospital_data where hname like '%"+hname+"%' ";
    PreparedStatement p1=cn.prepareStatement(s1);
    
    ResultSet r1=p1.executeQuery();
    
    while(r1.next())
    {
        String name,lno,address,contact,emergency,gbeds,abeds,email;
        name=r1.getString("hname");
        address=r1.getString("haddress");
        lno=r1.getString("lno");
        email=r1.getString("hemail");
         contact=r1.getString("hcontact");
         emergency=r1.getString("emergency");
          gbeds=r1.getString("gbeds");
           abeds=r1.getString("acbeds");
 %>
 <h3>Name: <b><%= name %></b></h3>
 <p>
     License Number: <%= lno %><br>
     Address: <%= address %>  </br>
     Contact:<%= contact %></br>
     Emergency: <%= emergency %><br/>
     General beds: <%= gbeds%> <br/>
     Ac Beds: <%= abeds%> <br/>
     Email: <%= email%><br/>
 </p>
 
 
     <%
}
    %>
   
    