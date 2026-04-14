package org.apache.jsp.Medicine;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class searcb_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Medilab</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("            background-color: #f8f9fa;\n");
      out.write("        }\n");
      out.write("        .container {\n");
      out.write("            padding: 4rem 0;\n");
      out.write("        }\n");
      out.write("        .section-title {\n");
      out.write("            text-align: center;\n");
      out.write("            margin-bottom: 3rem;\n");
      out.write("        }\n");
      out.write("        .section-title h2 {\n");
      out.write("            font-size: 2.5rem;\n");
      out.write("            font-weight: 600;\n");
      out.write("            color: #333;\n");
      out.write("        }\n");
      out.write("        .section-title p {\n");
      out.write("            font-size: 1.2rem;\n");
      out.write("            color: #555;\n");
      out.write("        }\n");
      out.write("        .search-form {\n");
      out.write("            background-color: #fff;\n");
      out.write("            padding: 3rem;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);\n");
      out.write("        }\n");
      out.write("        .search-form input {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 1rem;\n");
      out.write("            border: 1px solid #ced4da;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            margin-bottom: 1rem;\n");
      out.write("        }\n");
      out.write("        .search-form select {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 1rem;\n");
      out.write("            border: 1px solid #ced4da;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            margin-bottom: 2rem;\n");
      out.write("        }\n");
      out.write("        .search-form button {\n");
      out.write("            background-color: #007bff;\n");
      out.write("            color: #fff;\n");
      out.write("            border: none;\n");
      out.write("            padding: 1rem 2rem;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            cursor: pointer;\n");
      out.write("            transition: background-color 0.3s ease;\n");
      out.write("        }\n");
      out.write("        .search-form button:hover {\n");
      out.write("            background-color: #0056b3;\n");
      out.write("        }\n");
      out.write("        .search-form .form-group {\n");
      out.write("            margin-bottom: 1.5rem;\n");
      out.write("        }\n");
      out.write("        @media (max-width: 768px) {\n");
      out.write("            .search-form {\n");
      out.write("                padding: 2rem;\n");
      out.write("            }\n");
      out.write("            .search-form input, .search-form select {\n");
      out.write("                font-size: 1rem;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-12\">\n");
      out.write("                <div class=\"section-title\">\n");
      out.write("                    <h2>Find Your Doctor, Hospital, and Medicine</h2>\n");
      out.write("                    <p>Search for the best healthcare providers and services near you.</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <div class=\"search-form\">\n");
      out.write("                    <h3>Find Your Doctor</h3>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Doctor Name\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <select class=\"form-control\">\n");
      out.write("                            <option value=\"\">Select Speciality</option>\n");
      out.write("                            <option value=\"Cardiologist\">Cardiologist</option>\n");
      out.write("                            <option value=\"Dermatologist\">Dermatologist</option>\n");
      out.write("                            <option value=\"Endocrinologist\">Endocrinologist</option>\n");
      out.write("                            <option value=\"Gastroenterologist\">Gastroenterologist</option>\n");
      out.write("                            <option value=\"Neurologist\">Neurologist</option>\n");
      out.write("                            <option value=\"Ophthalmologist\">Ophthalmologist</option>\n");
      out.write("                            <option value=\"Pediatrician\">Pediatrician</option>\n");
      out.write("                        </select>\n");
      out.write("                    </div>\n");
      out.write("                    <button type=\"button\" class=\"btn btn-primary\">Search</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <div class=\"search-form\">\n");
      out.write("                    <h3>Find Hospital</h3>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Hospital Name\">\n");
      out.write("                    </div>\n");
      out.write("                    <button type=\"button\" class=\"btn btn-primary\">Search</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <div class=\"search-form\">\n");
      out.write("                    <h3>Find Medicine</h3>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Medicine Name\">\n");
      out.write("                    </div>\n");
      out.write("                    <button type=\"button\" class=\"btn btn-primary\">Search</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\"></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\n");
      out.write("</body>\n");
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
