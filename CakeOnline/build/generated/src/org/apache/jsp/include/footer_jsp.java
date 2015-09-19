package org.apache.jsp.include;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<div id=\"footer\">\n");
      out.write("    <div class=\"home\">\n");
      out.write("        <div>\n");
      out.write("            <div class=\"aside\">\n");
      out.write("                <div class=\"signup\">\n");
      out.write("                    <div>\n");
      out.write("                        <b>Too <span>BUSY</span> to shop?</b>\n");
      out.write("                        <a href=\"signin.jsp\">Sign up for free</a>\n");
      out.write("                        <p>and we&#39;ll deliver it on your doorstep</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"connect\">\n");
      out.write("                    <span>Follow Us</span>\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"http://facebook.com/freewebsitetemplates\" target=\"_blank\" class=\"facebook\">Facebook</a></li>\n");
      out.write("                        <li><a href=\"http://twitter.com/fwtemplates\" target=\"_blank\" class=\"twitter\">Twitter</a></li>\n");
      out.write("                        <li><a href=\"#\" class=\"subscribe\">Subscribe</a></li>\n");
      out.write("                        <li><a href=\"http://www.flickr.com/freewebsitetemplates/\" target=\"_blank\" class=\"flicker\">Flicker</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"section\">\n");
      out.write("                <div>\n");
      out.write("                    <div>\n");
      out.write("                        <h3><a href=\"Home.jsp\">Daily Cake Surprise</a></h3>\n");
      out.write("                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exertation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in.</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div id=\"featured\">\n");
      out.write("        <ul>\n");
      out.write("            <li class=\"first\">\n");
      out.write("                <a href=\"Home.jsp\"><img src=\"images/fruit-cake.jpg\" alt=\"Image\" /></a>\n");
      out.write("                <h2><a href=\"Home.jsp\">Tips on how to preserve</a></h2>\n");
      out.write("                <p>Lorem ipsum dolor sit amet, consectetuer adispiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. <a href=\"Home.jsp\" class=\"readmore\">read more</a></p>\n");
      out.write("            </li>\n");
      out.write("            <li>\n");
      out.write("                <a href=\"Home.jsp\"><img src=\"images/italian.jpg\" alt=\"Image\" /></a>\n");
      out.write("                <h2><a href=\"Home.jsp\">Menu of the day: Italian</a></h2>\n");
      out.write("                <p>Lorem ipsum dolor sit amet, consectetuer adispiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. <a href=\"Home.jsp\" class=\"readmore\">read more</a></p>\n");
      out.write("            </li>\n");
      out.write("            <li>\n");
      out.write("                <a href=\"Home.jsp\"><img src=\"images/fruit.jpg\" alt=\"Image\" /></a>\n");
      out.write("                <h2><a href=\"Home.jsp\">Fruit menu for your diet</a></h2>\n");
      out.write("                <p>Lorem ipsum dolor sit amet, consectetuer adispiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. <a href=\"Home.jsp\" class=\"readmore\">read more</a></p>\n");
      out.write("            </li>\n");
      out.write("            <li>\n");
      out.write("                <a href=\"Home.jsp\"><img src=\"images/desserts.jpg\" alt=\"Image\" /></a>\n");
      out.write("                <h2><a href=\"Home.jsp\">Desserts for every occassion</a></h2>\n");
      out.write("                <p>Lorem ipsum dolor sit amet, consectetuer adispiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. <a href=\"Home.jsp\" class=\"readmore\">read more</a></p>\n");
      out.write("            </li>\n");
      out.write("        </ul>\n");
      out.write("    </div>\n");
      out.write("    <div id=\"navigation\">\n");
      out.write("        <div>\n");
      out.write("            <ul>\n");
      out.write("                <li class=\"first\"><a href=\"Home.jsp\">help</a></li>\n");
      out.write("                <li><a href=\"Home.jsp\">about cake delight</a></li>\n");
      out.write("                <li><a href=\"Home.jsp\">cake delight talk</a></li>\n");
      out.write("                <li><a href=\"Home.jsp\">developers</a></li>\n");
      out.write("                <li><a href=\"Home.jsp\">privacy policy</a></li>\n");
      out.write("                <li><a href=\"Home.jsp\">terms of use(updated 10/15/08)</a></li>\n");
      out.write("            </ul>\n");
      out.write("            <p>Copyright &copy; 2006-2008 cake delight  All rights reserved</p>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
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
