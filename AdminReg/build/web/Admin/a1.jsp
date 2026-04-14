<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Medilab Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  
  <!-- Favicons -->
  <link href="../Static/Medilab/assets/img/favicon.png" rel="icon">
  <link href="../Static/Medilab/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../Static/Medilab/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="../Static/Medilab/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="../Static/Medilab/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../Static/Medilab/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../Static/Medilab/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../Static/Medilab/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../Static/Medilab/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="../Static/Medilab/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../Static/Medilab/assets/css/style.css" rel="stylesheet">
  <%
    //check session
    String e1="";
    String ut="";
    
    session=request.getSession(false); //use only existing session
    if(session==null)
    {
       System.out.print("session not found");
        response.sendRedirect("../AuthorizationError.jsp");
        
    }
    else
    {
        try
        {
             
            e1=session.getAttribute("email").toString();
            ut=session.getAttribute("usertype").toString();
            if(ut.equalsIgnoreCase("Admin"))
            {
                // Admin user, allow access
            }
           
            else if(ut.equalsIgnoreCase("MedicalShop"))
            {
                // Medical Shop user, allow access
                
            }
            
           
        }
                
        
        catch(NullPointerException e)
        {
            System.out.print("catch not found");
            response.sendRedirect("../AuthorizationError.jsp"+e);
            
        }
    }
%>
  
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
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
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
        <ul>
            <li><a class="nav-link scrollto" href="AdminHome.jsp">Home</a></li>
           <li class="dropdown"><a href="#"><span>Admin</span></a>
                <ul>
            <li><a class="nav-link scrollto active" href="AdminReg.jsp">New Admin</a></li>
            <li><a class="nav-link scrollto" href="showadmin.jsp">Show Admins</a></li>
          <li><a class="nav-link scrollto" href="ChangePassword.jsp">Change Password</a></li>
          <li><a class="nav-link scrollto" href="Profile.jsp">Check Profile</a></li>
                </ul>
            </li>
            
            
            <li class="dropdown"><a href="#"><span>Hospital</span></a>
                  <ul>
                      <li><a class="nav-link scrollto" href="HospitalReg.jsp">New Hospital</a></li>
          <li><a class="nav-link scrollto" href="ShowHospital.jsp">Show Hospital</a></li>
         
                  </ul> 
            </li>
            
            <li class="dropdown"><a href="#"><span>Medical Shop</span></a>
                  <ul>
                      <li><a class="nav-link scrollto" href="MedicalReg.jsp">New Medical Shop</a></li>
                      <li><a class="nav-link scrollto" href="showShop.jsp">Show Medical</a></li>
                      <li><a class="nav-link scrollto" href="../Medicine/MedReg.jsp">Add Medicine</a></li>
                      <li><a class="nav-link scrollto" href="showmedicine.jsp">Show Medicine</a></li>
          
                  </ul> 
            </li>
     
          <li><a class="nav-link scrollto" href="../Logout.jsp">Logout</a></li>
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
  <div class="row" style="min-height: 600px; padding-top: 250px;">