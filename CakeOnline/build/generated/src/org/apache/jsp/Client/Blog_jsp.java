package org.apache.jsp.Client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Blog_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Blog</title>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" />\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/menu.jsp", out, false);
      out.write("\r\n");
      out.write("        <div id=\"content\">\r\n");
      out.write("            <div id=\"blog\">\r\n");
      out.write("                <div id=\"articles\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <div>\r\n");
      out.write("                                    <span class=\"date\">Dec 3</span>\r\n");
      out.write("                                    <span class=\"connect\">\r\n");
      out.write("                                        <a href=\"http://twitter.com/fwtemplates\" target=\"_blank\" class=\"twitter\">Twitter</a>\r\n");
      out.write("                                        <a href=\"#\" target=\"_blank\" class=\"heart\">Heart</a>\r\n");
      out.write("                                        <a href=\"http://facebook.com/freewebsitetemplates\" target=\"_blank\" class=\"facebook\">Facebook</a>\r\n");
      out.write("                                    </span>\r\n");
      out.write("                                    <h1><a href=\"Home.jsp\">New Recipes: Fancy Desserts</a></h1>\r\n");
      out.write("                                    <h2>Let&#39;s bake!</h2>\r\n");
      out.write("                                    <p>Nullam ut mollis odio. Duis tempor interdum tellus, sit amet aliquet dui dictum a. Quisque in lacus vel dui tempus porttitor mollis vitae dolor. Phasellus lacinia est at massa mattis consequat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis condimentum ultricies scelerisque. Quisque vulputate laoreet erat at consequat. Sed sit amet sem sed lectus consectetur ultrices. Ut tincidunt, augue id sollicitudin placerat, magna nisl tempor arcu, vitae blandit risus ligula nec erat. Nunc convallis, erat in ornare tempus, ligula ipsum lacinia metus, nec bibendum tortor neque eget diam. Donec imperdiet faucibus enim, vel sodales tortor blandit a. Suspendisse potenti. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eleifend tincidunt iaculis.</p>\r\n");
      out.write("                                    <span id=\"tag\">Tag: <a href=\"Home.jsp\">Cookies</a> <a href=\"Home.jsp\">Recipes</a></span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <div>\r\n");
      out.write("                                    <span class=\"date\">Nov 29</span>\r\n");
      out.write("                                    <span class=\"connect\">\r\n");
      out.write("                                        <a href=\"http://twitter.com/fwtemplates\" target=\"_blank\" class=\"twitter\">Twitter</a>\r\n");
      out.write("                                        <a href=\"#\" target=\"_blank\" class=\"heart\">Heart</a>\r\n");
      out.write("                                        <a href=\"http://facebook.com/freewebsitetemplates\" target=\"_blank\" class=\"facebook\">Facebook</a>\r\n");
      out.write("                                    </span>\r\n");
      out.write("                                    <h1><a href=\"Home.jsp\">3 Day Christmas Sale on the Shop</a></h1>\r\n");
      out.write("                                    <h2>December 3-5&#44; 2011 Crazy Discounts</h2>\r\n");
      out.write("                                    <p>Pellentesque placerat sollicitudin metus eget euismod. Suspendisse potenti. Sed nibh augue, rutrum quis posuere quis, elementum et enim. Morbi varius varius odio ac facilisis. Pellentesque ut erat vulputate ligula elementum ultrices. Morbi tempor magna sed tellus pellentesque ac ultricies justo euismod. Proin vitae enim non eros eleifend aliquam. Morbi posuere nibh vitae sapien ultrices molestie. Vivamus elit nulla, dignissim non fringilla vel, facillisis et arcu.</p>\r\n");
      out.write("                                    <span id=\"tag\">Tag: <a href=\"Home.jsp\">Sale</a> <a href=\"Home.jsp\">Promos</a> <a href=\"Home.jsp\">Food</a></span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <div class=\"section\">\r\n");
      out.write("                        <a href=\"Home.jsp\" class=\"newpost\">New Post</a>\r\n");
      out.write("                        <a href=\"Home.jsp\" class=\"oldpost\">Old Post</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div id=\"sidebar\">\r\n");
      out.write("                    <h2>Archives</h2>\r\n");
      out.write("                    <h3 class=\"first\"><a href=\"Home.jsp\">2011 <span>(60)</span></a></h3>\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <p><a href=\"Home.jsp\">November <span>(11)</span></a></p>\r\n");
      out.write("                        <p><a href=\"Home.jsp\">October <span>(3)</span></a></p>\r\n");
      out.write("                        <p><a href=\"Home.jsp\">September <span>(8)</span></a></p>\r\n");
      out.write("                        <p><a href=\"Home.jsp\">August <span>(3)</span></a></p>\r\n");
      out.write("                        <p><a href=\"Home.jsp\">July <span>(2)</span></a></p>\r\n");
      out.write("                        <p><a href=\"Home.jsp\">June</a></p>\r\n");
      out.write("                        <p><a href=\"Home.jsp\">May <span>(8)</span></a></p>\r\n");
      out.write("                        <p><a href=\"Home.jsp\">April <span>(7)</span></a></p>\r\n");
      out.write("                        <p><a href=\"Home.jsp\">March <span>(7)</span></a></p>\r\n");
      out.write("                        <p><a href=\"Home.jsp\">April <span>(7)</span></a></p>\r\n");
      out.write("                        <p><a href=\"Home.jsp\">February <span>(10)</span></a></p>\r\n");
      out.write("                        <p><a href=\"Home.jsp\">January <span>(1)</span></a></p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <h3><a href=\"Home.jsp\">2010</a></h3>\r\n");
      out.write("                    <h3><a href=\"Home.jsp\">2009</a></h3>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("       ");
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
