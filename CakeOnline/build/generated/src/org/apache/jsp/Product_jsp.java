package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Product_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\" />\n");
      out.write("        <title>The Pastry Shop - Cake Delights Web Template</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/menu.jsp", out, false);
      out.write("\n");
      out.write("        <div id=\"content\">\n");
      out.write("            <div>\n");
      out.write("                <h1>The Pastry shop</h1>\n");
      out.write("                <ul>\n");
      out.write("                    <li>\n");
      out.write("                        <div>\n");
      out.write("                            <div>\n");
      out.write("                                <h2><a href=\"Home.jsp\">Special Treats</a></h2>\n");
      out.write("                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>\n");
      out.write("                                <a href=\"Home.jsp\" class=\"view\">view all</a>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"Home.jsp\"><img src=\"images/special-treats.jpg\" alt=\"Image\" /></a>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <div>\n");
      out.write("                            <div>\n");
      out.write("                                <h2><a href=\"Home.jsp\">Tarts</a></h2>\n");
      out.write("                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>\n");
      out.write("                                <a href=\"Home.jsp\" class=\"view\">view all</a>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"Home.jsp\"><img src=\"images/tarts.jpg\" alt=\"Image\" /></a>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <div>\n");
      out.write("                            <div>\n");
      out.write("                                <h2><a href=\"Home.jsp\">Cakes</a></h2>\n");
      out.write("                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>\n");
      out.write("                                <a href=\"Home.jsp\" class=\"view\">view all</a>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"Home.jsp\"><img src=\"images/cakes.jpg\" alt=\"Image\" /></a>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <div>\n");
      out.write("                            <div>\n");
      out.write("                                <h2><a href=\"Home.jsp\">Desserts</a></h2>\n");
      out.write("                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>\n");
      out.write("                                <a href=\"Home.jsp\" class=\"view\">view all</a>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"Home.jsp\"><img src=\"images/dessert.jpg\" alt=\"Image\" /></a>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <div>\n");
      out.write("                            <div>\n");
      out.write("                                <h2><a href=\"Home.jsp\">Pastries</a></h2>\n");
      out.write("                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>\n");
      out.write("                                <a href=\"Home.jsp\" class=\"view\">view all</a>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"Home.jsp\"><img src=\"images/pastries.jpg\" alt=\"Image\" /></a>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <div>\n");
      out.write("                            <div>\n");
      out.write("                                <h2><a href=\"Home.jsp\">Healthy Food</a></h2>\n");
      out.write("                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>\n");
      out.write("                                <a href=\"Home.jsp\" class=\"view\">view all</a>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"Home.jsp\"><img src=\"images/healthy-food.jpg\" alt=\"Image\" /></a>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/newfooter.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
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
