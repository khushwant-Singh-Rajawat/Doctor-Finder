package org.apache.jsp.Medicine;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import kushwant.doctorfinder.MyLib;
import java.sql.*;

public final class showmedicine_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Medicine/m2.jsp");
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"medicine\" style=\"margin-left: 100px; margin-top: -250px;\">\n");
      out.write("    <h1><b>Show Medicine</b></h1>\n");
      out.write("&nbsp;&nbsp;\n");
      out.write("<h3><a href=\"MedReg.jsp\">Add New Medicine</a></h3>\n");
      out.write("<div class=\"index\" >\n");
      out.write("    <div class=\"row\" style=\"display: flex;\">\n");

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
        

      out.write("\n");
      out.write("<div class=\"col-4\" style=\"margin-top:50px; \">\n");
      out.write("       <h3>Medicine Name: ");
      out.print( med_name );
      out.write("</h3>\n");
      out.write("       <P>\n");
      out.write("       Generic Name: ");
      out.print( gen_name );
      out.write("</br>\n");
      out.write("       Manufacturer: ");
      out.print( manufacture );
      out.write("<br>\n");
      out.write("       Batch Number: ");
      out.print( batch_no );
      out.write("</br>\n");
      out.write("       Expiery Date: ");
      out.print( exp_date );
      out.write(" </br>\n");
      out.write("       Price: ");
      out.print( price );
      out.write(" </br>\n");
      out.write("       Quantity: ");
      out.print( qty );
      out.write("<br>\n");
      out.write("       Unit: ");
      out.print( unit );
      out.write("<br>\n");
      out.write("       Category: ");
      out.print( ctg );
      out.write("<br>\n");
      out.write("       Description: ");
      out.print( des );
      out.write("<br>\n");
      out.write("      \n");
      out.write("    \n");
      out.write("       </p>\n");
      out.write("       <form method=\"post\" action=\"EditMed.jsp\" style=\"margin-right: 10px; display: inline-block;\">\n");
      out.write("           <input type=\"hidden\" value=\"");
      out.print( med_name );
      out.write("\" name=\"H1\"/>\n");
      out.write("           <input type=\"submit\" value=\"edit\" name=\"B1\">\n");
      out.write("       </form> \n");
      out.write("           \n");
      out.write("           <form method=\"post\" action=\"ShopMed.jsp\"style=\"display: inline-block;\" >\n");
      out.write("           <input type=\"hidden\" value=\"");
      out.print( med_name );
      out.write("\" name=\"H1\"/>\n");
      out.write("           <input type=\"submit\" value=\"delete\" name=\"B1\">\n");
      out.write("       </form> \n");
      out.write("</div>\n");
      out.write("     ");
  
    }


      out.write("\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- Footer Start -->\r\n");
      out.write("    <div class=\"container-fluid bg-secondary text-dark mt-5 pt-5\">\r\n");
      out.write("        <div class=\"row px-xl-5 pt-5\">\r\n");
      out.write("            <div class=\"col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5\">\r\n");
      out.write("                <a href=\"\" class=\"text-decoration-none\">\r\n");
      out.write("                    <h1 class=\"mb-4 display-5 font-weight-semi-bold\"><span class=\"text-primary font-weight-bold border border-white px-3 mr-1\">E</span>Shopper</h1>\r\n");
      out.write("                </a>\r\n");
      out.write("                <p>Dolore erat dolor sit lorem vero amet. Sed sit lorem magna, ipsum no sit erat lorem et magna ipsum dolore amet erat.</p>\r\n");
      out.write("                <p class=\"mb-2\"><i class=\"fa fa-map-marker-alt text-primary mr-3\"></i>123 Street, New York, USA</p>\r\n");
      out.write("                <p class=\"mb-2\"><i class=\"fa fa-envelope text-primary mr-3\"></i>info@example.com</p>\r\n");
      out.write("                <p class=\"mb-0\"><i class=\"fa fa-phone-alt text-primary mr-3\"></i>+012 345 67890</p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-lg-8 col-md-12\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-4 mb-5\">\r\n");
      out.write("                        <h5 class=\"font-weight-bold text-dark mb-4\">Quick Links</h5>\r\n");
      out.write("                        <div class=\"d-flex flex-column justify-content-start\">\r\n");
      out.write("                            <a class=\"text-dark mb-2\" href=\"index.html\"><i class=\"fa fa-angle-right mr-2\"></i>Home</a>\r\n");
      out.write("                            <a class=\"text-dark mb-2\" href=\"shop.html\"><i class=\"fa fa-angle-right mr-2\"></i>Our Shop</a>\r\n");
      out.write("                            <a class=\"text-dark mb-2\" href=\"detail.html\"><i class=\"fa fa-angle-right mr-2\"></i>Shop Detail</a>\r\n");
      out.write("                            <a class=\"text-dark mb-2\" href=\"cart.html\"><i class=\"fa fa-angle-right mr-2\"></i>Shopping Cart</a>\r\n");
      out.write("                            <a class=\"text-dark mb-2\" href=\"checkout.html\"><i class=\"fa fa-angle-right mr-2\"></i>Checkout</a>\r\n");
      out.write("                            <a class=\"text-dark\" href=\"contact.html\"><i class=\"fa fa-angle-right mr-2\"></i>Contact Us</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-md-4 mb-5\">\r\n");
      out.write("                        <h5 class=\"font-weight-bold text-dark mb-4\">Quick Links</h5>\r\n");
      out.write("                        <div class=\"d-flex flex-column justify-content-start\">\r\n");
      out.write("                            <a class=\"text-dark mb-2\" href=\"index.html\"><i class=\"fa fa-angle-right mr-2\"></i>Home</a>\r\n");
      out.write("                            <a class=\"text-dark mb-2\" href=\"shop.html\"><i class=\"fa fa-angle-right mr-2\"></i>Our Shop</a>\r\n");
      out.write("                            <a class=\"text-dark mb-2\" href=\"detail.html\"><i class=\"fa fa-angle-right mr-2\"></i>Shop Detail</a>\r\n");
      out.write("                            <a class=\"text-dark mb-2\" href=\"cart.html\"><i class=\"fa fa-angle-right mr-2\"></i>Shopping Cart</a>\r\n");
      out.write("                            <a class=\"text-dark mb-2\" href=\"checkout.html\"><i class=\"fa fa-angle-right mr-2\"></i>Checkout</a>\r\n");
      out.write("                            <a class=\"text-dark\" href=\"contact.html\"><i class=\"fa fa-angle-right mr-2\"></i>Contact Us</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-md-4 mb-5\">\r\n");
      out.write("                        <h5 class=\"font-weight-bold text-dark mb-4\">Newsletter</h5>\r\n");
      out.write("                        <form action=\"\">\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
      out.write("                                <input type=\"text\" class=\"form-control border-0 py-4\" placeholder=\"Your Name\" required=\"required\" />\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
      out.write("                                <input type=\"email\" class=\"form-control border-0 py-4\" placeholder=\"Your Email\"\r\n");
      out.write("                                    required=\"required\" />\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <button class=\"btn btn-primary btn-block border-0 py-3\" type=\"submit\">Subscribe Now</button>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"row border-top border-light mx-xl-5 py-4\">\r\n");
      out.write("            <div class=\"col-md-6 px-xl-0\">\r\n");
      out.write("                <p class=\"mb-md-0 text-center text-md-left text-dark\">\r\n");
      out.write("                    &copy; <a class=\"text-dark font-weight-semi-bold\" href=\"#\">Your Site Name</a>. All Rights Reserved. Designed\r\n");
      out.write("                    by\r\n");
      out.write("                    <a class=\"text-dark font-weight-semi-bold\" href=\"https://htmlcodex.com\">HTML Codex</a><br>\r\n");
      out.write("                    Distributed By <a href=\"https://themewagon.com\" target=\"_blank\">ThemeWagon</a>\r\n");
      out.write("                </p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-md-6 px-xl-0 text-center text-md-right\">\r\n");
      out.write("                <img class=\"img-fluid\" src=\"../Static/Medical_Store Website/img/payments.png\" alt=\"\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- Footer End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- Back to Top -->\r\n");
      out.write("    <a href=\"#\" class=\"btn btn-primary back-to-top\"><i class=\"fa fa-angle-double-up\"></i></a>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- JavaScript Libraries -->\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("    <script src=\"../Static/Medical_Store Website/lib/easing/easing.min.js\"></script>\r\n");
      out.write("    <script src=\"../Static/Medical_Store Website/lib/owlcarousel/owl.carousel.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!-- Contact Javascript File -->\r\n");
      out.write("    <script src=\"../Static/Medical_Store Website/mail/jqBootstrapValidation.min.js\"></script>\r\n");
      out.write("    <script src=\"../Static/Medical_Store Website/mail/contact.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!-- Template Javascript -->\r\n");
      out.write("    <script src=\"../Static/Medical_Store Website/js/main.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\n");
      out.write("</div>");
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
