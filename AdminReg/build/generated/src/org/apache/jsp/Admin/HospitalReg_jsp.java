package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class HospitalReg_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Admin/a1.jsp");
    _jspx_dependants.add("/Admin/a2.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("\n");
      out.write("  <title>Medilab Bootstrap Template - Index</title>\n");
      out.write("  <meta content=\"\" name=\"description\">\n");
      out.write("  <meta content=\"\" name=\"keywords\">\n");
      out.write("\n");
      out.write("  \n");
      out.write("  <!-- Favicons -->\n");
      out.write("  <link href=\"../Static/Medilab/assets/img/favicon.png\" rel=\"icon\">\n");
      out.write("  <link href=\"../Static/Medilab/assets/img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("\n");
      out.write("  <!-- Google Fonts -->\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  <!-- Vendor CSS Files -->\n");
      out.write("  <link href=\"../Static/Medilab/assets/vendor/fontawesome-free/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"../Static/Medilab/assets/vendor/animate.css/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"../Static/Medilab/assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"../Static/Medilab/assets/vendor/bootstrap-icons/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"../Static/Medilab/assets/vendor/boxicons/css/boxicons.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"../Static/Medilab/assets/vendor/glightbox/css/glightbox.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"../Static/Medilab/assets/vendor/remixicon/remixicon.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"../Static/Medilab/assets/vendor/swiper/swiper-bundle.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  <!-- Template Main CSS File -->\n");
      out.write("  <link href=\"../Static/Medilab/assets/css/style.css\" rel=\"stylesheet\">\n");
      out.write("  ");

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

      out.write("\n");
      out.write("  \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("     <!-- ======= Top Bar ======= -->\n");
      out.write("  <div id=\"topbar\" class=\"d-flex align-items-center fixed-top\">\n");
      out.write("    <div class=\"container d-flex justify-content-between\">\n");
      out.write("      <div class=\"contact-info d-flex align-items-center\">\n");
      out.write("        <i class=\"bi bi-envelope\"></i> <a href=\"mailto:contact@example.com\">contact@example.com</a>\n");
      out.write("        <i class=\"bi bi-phone\"></i> +1 5589 55488 55\n");
      out.write("      </div>\n");
      out.write("      <div class=\"d-none d-lg-flex social-links align-items-center\">\n");
      out.write("        <a href=\"#\" class=\"twitter\"><i class=\"bi bi-twitter\"></i></a>\n");
      out.write("        <a href=\"#\" class=\"facebook\"><i class=\"bi bi-facebook\"></i></a>\n");
      out.write("        <a href=\"#\" class=\"instagram\"><i class=\"bi bi-instagram\"></i></a>\n");
      out.write("        <a href=\"#\" class=\"linkedin\"><i class=\"bi bi-linkedin\"></i></a>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <!-- ======= Header ======= -->\n");
      out.write("  <header id=\"header\" class=\"fixed-top\">\n");
      out.write("    <div class=\"container d-flex align-items-center\">\n");
      out.write("\n");
      out.write("      <h1 class=\"logo me-auto\"><a href=\"index.html\">Medilab</a></h1>\n");
      out.write("      <!-- Uncomment below if you prefer to use an image logo -->\n");
      out.write("      <!-- <a href=\"index.html\" class=\"logo me-auto\">\n");
      out.write("      <img src=\"../Static/assets/img/logo.png\" alt=\"\" class=\"img-fluid\"></a>-->\n");
      out.write("\n");
      out.write("      <nav id=\"navbar\" class=\"navbar order-last order-lg-0\">\n");
      out.write("        <ul>\n");
      out.write("            <li><a class=\"nav-link scrollto\" href=\"AdminHome.jsp\">Home</a></li>\n");
      out.write("           <li class=\"dropdown\"><a href=\"#\"><span>Admin</span></a>\n");
      out.write("                <ul>\n");
      out.write("            <li><a class=\"nav-link scrollto active\" href=\"AdminReg.jsp\">New Admin</a></li>\n");
      out.write("            <li><a class=\"nav-link scrollto\" href=\"showadmin.jsp\">Show Admins</a></li>\n");
      out.write("          <li><a class=\"nav-link scrollto\" href=\"ChangePassword.jsp\">Change Password</a></li>\n");
      out.write("          <li><a class=\"nav-link scrollto\" href=\"Profile.jsp\">Check Profile</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <li class=\"dropdown\"><a href=\"#\"><span>Hospital</span></a>\n");
      out.write("                  <ul>\n");
      out.write("                      <li><a class=\"nav-link scrollto\" href=\"HospitalReg.jsp\">New Hospital</a></li>\n");
      out.write("          <li><a class=\"nav-link scrollto\" href=\"ShowHospital.jsp\">Show Hospital</a></li>\n");
      out.write("         \n");
      out.write("                  </ul> \n");
      out.write("            </li>\n");
      out.write("            \n");
      out.write("            <li class=\"dropdown\"><a href=\"#\"><span>Medical Shop</span></a>\n");
      out.write("                  <ul>\n");
      out.write("                      <li><a class=\"nav-link scrollto\" href=\"MedicalReg.jsp\">New Medical Shop</a></li>\n");
      out.write("                      <li><a class=\"nav-link scrollto\" href=\"showShop.jsp\">Show Medical</a></li>\n");
      out.write("                      <li><a class=\"nav-link scrollto\" href=\"../Medicine/MedReg.jsp\">Add Medicine</a></li>\n");
      out.write("                      <li><a class=\"nav-link scrollto\" href=\"showmedicine.jsp\">Show Medicine</a></li>\n");
      out.write("          \n");
      out.write("                  </ul> \n");
      out.write("            </li>\n");
      out.write("     \n");
      out.write("          <li><a class=\"nav-link scrollto\" href=\"../Logout.jsp\">Logout</a></li>\n");
      out.write("        </ul>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("        <i class=\"bi bi-list mobile-nav-toggle\"></i>\n");
      out.write("      </nav><!-- .navbar -->\n");
      out.write("    </div>\n");
      out.write("  </header><!-- End Header -->\n");
      out.write("  <!-- ======= Hero Section ======= -->\n");
      out.write("  <section id=\"hero\" class=\"d-flex align-items-center\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <h1>Welcome to Medilab</h1>\n");
      out.write("      <h2>We are team of talented designers making websites with Bootstrap</h2>\n");
      out.write("      <a href=\"#about\" class=\"btn-get-started scrollto\">Get Started</a>\n");
      out.write("    </div>\n");
      out.write("  </section><!-- End Hero -->\n");
      out.write("  <div class=\"row\" style=\"min-height: 600px; padding-top: 250px;\">");
      out.write("\n");
      out.write("<h1 class=\"a1\">Hospital registeration</h1>\n");
      out.write("<form onSubmit=\"return A()\" method=\"post\" action=\"HospitalReg1.jsp\">\n");
      out.write("    <p>Name<input type=\"text\" name=\"T1\" id=\"txt1\"/>\n");
      out.write("        <span id=\"sp1\"></span>\n");
      out.write("    </p>\n");
      out.write("    <p>License Number<input type=\"text\" name=\"T2\" id=\"txt2\"/>\n");
      out.write("        <span id=\"sp2\"></span>\n");
      out.write("    </p>\n");
      out.write("<p>Address<input type=\"text\" name=\"T3\" id=\"txt3\"/>\n");
      out.write("    <span id=\"sp3\"></span>\n");
      out.write("</p>\n");
      out.write("<p>Contact<input type=\"text\" name=\"T4\" id=\"txt4\"/>\n");
      out.write("    <span id=\"sp4\"></span>\n");
      out.write("</p>\n");
      out.write("<p>Emergency<input type=\"radio\" name=\"T5\" value=\"yes\"/>yes\n");
      out.write("    <input type=\"radio\" name=\"T5\" value=\"no\"/>No\n");
      out.write("</p>\n");
      out.write("\n");
      out.write("<p>\n");
      out.write("    General Beds<input type=\"text\" name=\"T6\"/>\n");
      out.write("</p>\n");
      out.write("<p>\n");
      out.write("    Ac Beds<input type=\"text\" name=\"T7\"/>\n");
      out.write("</p>\n");
      out.write("<p>\n");
      out.write("    Email<input type=\"text\" name=\"T8\" id=\"txt5\" placeholder=\"Enter email\"/>\n");
      out.write("    <span id=\"sp5\"></span>\n");
      out.write("</p>\n");
      out.write("<p>\n");
      out.write("    Password<input type=\"password\" name=\"T9\" id=\"txt9\"/>\n");
      out.write("    <span id=\"sp9\"></span>\n");
      out.write("</p>\n");
      out.write("<p>\n");
      out.write("    Confirm Password<input name=\"T10\" type=\"password\" id=\"txt10\"/>\n");
      out.write("    <span id=\"sp10\"></span>\n");
      out.write("</p>\n");
      out.write("<p>\n");
      out.write("    <input type=\"submit\" name=\"B1\" id=\"btnl\">\n");
      out.write("</p>\n");
      out.write("</form>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- ======= Footer ======= -->\n");
      out.write("  <footer id=\"footer\">\n");
      out.write("\n");
      out.write("    <div class=\"footer-top\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("\n");
      out.write("         \n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"container d-md-flex py-4\">\n");
      out.write("\n");
      out.write("      <div class=\"me-md-auto text-center text-md-start\">\n");
      out.write("        <div class=\"copyright\">\n");
      out.write("          &copy; Copyright <strong><span>Medilab</span></strong>. All Rights Reserved\n");
      out.write("        </div>\n");
      out.write("        <div class=\"credits\">\n");
      out.write("          <!-- All the links in the footer should remain intact. -->\n");
      out.write("          <!-- You can delete the links only if you purchased the pro version. -->\n");
      out.write("          <!-- Licensing information: https://bootstrapmade.com/license/ -->\n");
      out.write("          <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/ -->\n");
      out.write("          Designed by <a href=\"https://bootstrapmade.com/\">BootstrapMade</a>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"social-links text-center text-md-right pt-3 pt-md-0\">\n");
      out.write("        <a href=\"#\" class=\"twitter\"><i class=\"bx bxl-twitter\"></i></a>\n");
      out.write("        <a href=\"#\" class=\"facebook\"><i class=\"bx bxl-facebook\"></i></a>\n");
      out.write("        <a href=\"#\" class=\"instagram\"><i class=\"bx bxl-instagram\"></i></a>\n");
      out.write("        <a href=\"#\" class=\"google-plus\"><i class=\"bx bxl-skype\"></i></a>\n");
      out.write("        <a href=\"#\" class=\"linkedin\"><i class=\"bx bxl-linkedin\"></i></a>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </footer><!-- End Footer -->\n");
      out.write("\n");
      out.write("  \n");
      out.write(" <!-- Vendor JS Files -->\n");
      out.write("  <script src=\"../Static/Medilab/assets/vendor/purecounter/purecounter_vanilla.js\"></script>\n");
      out.write("  <script src=\"../Static/Medilab/assets/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("  <script src=\"../Static/Medilab/assets/vendor/glightbox/js/glightbox.min.js\"></script>\n");
      out.write("  <script src=\"../Static/Medilab/assets/vendor/swiper/swiper-bundle.min.js\"></script>\n");
      out.write("  <script src=\"../Static/Medilab/assets/vendor/php-email-form/validate.js\"></script>\n");
      out.write("\n");
      out.write("  <!-- Template Main JS File -->\n");
      out.write("  <script src=\"../Static/Medilab/assets/js/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
