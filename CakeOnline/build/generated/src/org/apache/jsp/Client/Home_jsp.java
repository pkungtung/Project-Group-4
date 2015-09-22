package org.apache.jsp.Client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Cake </title>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" />\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/menu.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div id=\"content\">\r\n");
      out.write("            <div class=\"home\">\r\n");
      out.write("                <div class=\"aside\">\r\n");
      out.write("                    <h1>Welcome to our site</h1>\r\n");
      out.write("                    <p>Pastry is the name given to various kinds of baked goods made from ingredients such as flour, butter, shortening, baking powder or eggs. Small cakes, tarts and other sweet baked goods are called &#34;pastries&#34;.</p> \r\n");
      out.write("                    <p>Pastry may also refer to the dough from which such baked goods are made. Pastry dough is rolled out thinly and used as a base for baked goods. Common pastry dishes include pies, tarts and quiches. \r\n");
      out.write("                    <p>Pastry is distinguished from bread by having a higher fat content, which contributes to a flaky or crumbly texture. A good pastry is light and airy and fatty, but firm enough to support the weight of the filling. When making a shortcrust pastry, care must be taken to blend the fat and flour thoroughly before adding. <a href=\"index.html\" class=\"readmore\">read more</a></p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"section\">\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <h2>The food story</h2>\r\n");
      out.write("                        <p>Lorem ipsum dolor sit amet, consectetuer adispiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exercitation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li class=\"first\">\r\n");
      out.write("                            <a href=\"Home.jsp\"><img src=\"images/cake.jpg\" alt=\"Image\" /></a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"Home.jsp\"><img src=\"images/burgercake.jpg\" alt=\"Image\" /></a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"Home.jsp\"><img src=\"images/cupcake.jpg\" alt=\"Image\" /></a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/footer.jsp", out, false);
      out.write("\r\n");
      out.write("    </body>\r\n");
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
