package org.apache.jsp.Client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class About_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\" />\r\n");
      out.write("        <title>About</title>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" />\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/menu.jsp", out, false);
      out.write("\r\n");
      out.write("        <div id=\"content\">\r\n");
      out.write("            <div id=\"about\">\r\n");
      out.write("                <div class=\"aside\">\r\n");
      out.write("                    <h1>About The Cake</h1>\r\n");
      out.write("                    <span></span>\r\n");
      out.write("                    <p>\r\n");
      out.write("                        The Cake is the name given to various kinds of baked goods made from ingredients such as flour, butter, shortening, baking powder or eggs. Small cakes, tarts and other sweet baked goods are called \"pastries\".\r\n");
      out.write("                        The Cake may also refer to the dough from which such baked goods are made. Pastry dough is rolled out thinly and used as a base for baked goods. Common pastry dishes include pies, tarts and quiches.\r\n");
      out.write("                        The Cake is distinguished from bread by having a higher fat content, which contributes to a flaky or crumbly texture. A good pastry is light and airy and fatty, but firm enough to support the weight of the filling. When making a shortcrust pastry, care must be taken to blend the fat and flour thoroughly before adding. \r\n");
      out.write("                    </p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"section\">\r\n");
      out.write("                    <div id=\"visitshop\">\r\n");
      out.write("                        <div>\r\n");
      out.write("                            <p><span>Sweets from the heart</span> Treat your loveones</p>\r\n");
      out.write("                            <a href=\"\" class=\"visit\">visit the shop</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <h3>Address</h3>\r\n");
      out.write("                        <p>8 Ton That Thuyet <br /> \r\n");
      out.write("                            HaNoi VietNam <br /> \r\n");
      out.write("                            Samar Loop St., Businees Park <br />\r\n");
      out.write("                            Quisque vestibulum, 6029 <br />\r\n");
      out.write("                            Lorem, Ipsum Dolor\r\n");
      out.write("                        </p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <a href=\"index.html\" class=\"callus\">CALL US <span>043 456 789</span></a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/newfooter.jsp", out, false);
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
