<%@page import="kushwant.doctorfinder.MyLib"%>
<%@page import="java.sql.*" %>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Medilab Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  
  <!-- Favicons -->
  <link href="Static/Medilab/assets/img/favicon.png" rel="icon">
  <link href="Static/Medilab/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="Static/Medilab/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="Static/Medilab/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="Static/Medilab/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="Static/Medilab/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="Static/Medilab/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="Static/Medilab/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="Static/Medilab/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="Static/Medilab/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="Static/Medilab/assets/css/style.css" rel="stylesheet">


  
</head>

<body>
     <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">contact@example.com</a>
        <i class="bi bi-phone"></i> +1 5589 55488 55
      </div>
      <div class="d-none d-lg-flex social-links align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html">Medilab</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto">
      <img src="../Static/assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul >
            <li><a class="nav-link scrollto" href="index.jsp"><i style='font-size:24px' class='fas'>&#xf015;</i>Home</a></li>
            <li><a class="nav-link scrollto" href="ShowHospitals.jsp"><i style="font-size: 24px" class="fa">&#xf0f8;</i>Hospital</a></li> 
            <li><a class="nav-link scrollto" href="ShowDoctors.jsp" ><i style="font-size:24px;" class="fa">&#xf0f0;</i>Doctor</a></li> 
            <li><a class="nav-link scrollto" href="Login.jsp"><i class="fa-sharp fa-solid fa-right-to-bracket"></i>Login</a></li>
            <li> <a href="showshop1.jsp" > <i style='font-size:24px' class='fas'>&#xf469;</i>Medical Store</a></li>
            <li> <a href="showmedicine1.jsp" ><i style='font-size:24px' class="fa-solid fa-tablets"></i>Medicine</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container">
      <h1>Welcome to Medilab</h1>
      <h2>We are team of talented designers making websites with Bootstrap</h2>
      <a href="#about" class="btn-get-started scrollto">Get Started</a>
    </div>
  </section><!-- End Hero -->
  
  <div class="row" style="min-height: 300px; min-height: 300px; margin: 250px 0px 0px 50px;">
<h1><b>Show Medicine</b></h1>
<h3 ><a href="MedReg.jsp" >Add New Medicine</a></h3>
<div class="index" >
    <div class="row" style="display:flex; ">
  
<%
     MyLib obj=new MyLib();
    Connection cn=obj.createConnection();    
    String s1="select * from medicines_data";
    PreparedStatement p1=cn.prepareStatement(s1);
    
    ResultSet r1=p1.executeQuery();
    
    while(r1.next())
    {
        String med_name,gen_name,manufacture,batch_no,exp_date,unit,ctg,des;
        double price;
        int qty;
        med_name=r1.getString("med_name");
         gen_name=r1.getString("gen_name");
         manufacture=r1.getString("manufacture");
         batch_no=r1.getString("batch_no");
         exp_date=r1.getString("exp_date");
         price=r1.getDouble("price");
         qty=r1.getInt("qty");
         unit=r1.getString("unit");
        ctg=r1.getString("ctg");
        des=r1.getString("des");
        
%>
<div class="medicine col-4" >
       <P style="font-size: 20px; font-family: sans-serif">
           <h3>Medicine Name: <%= med_name %></h3>
       <P>
       Generic Name: <%= gen_name %></br>
       Manufacturer: <%= manufacture %><br>
       Batch Number: <%= batch_no %></br>
       Expiery Date: <%= exp_date %> </br>
       Price: <%= price %> </br>
       Quantity: <%= qty %><br>
       Unit: <%= unit %><br>
       Category: <%= ctg %><br>
       Description: <%= des %><br>

       </p>
</div>
    
       
     <%  
    }
%>
    </div>
</div>
<%@include file="c2.jsp" %>
