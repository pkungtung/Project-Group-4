package org.apache.jsp;

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!-- Website template by freewebsitetemplates.com -->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\" />\n");
      out.write("        <title>About - Cake Website Template</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/menu.jsp", out, false);
      out.write("\n");
      out.write("        <div id=\"content\">\n");
      out.write("            <div id=\"about\">\n");
      out.write("                <div class=\"aside\">\n");
      out.write("                    <h1>About Cake Delights</h1>\n");
      out.write("                    <span>We Have Free Templates for Everyone</span>\n");
      out.write("                    <p>Our website templates are created with inspiration, checked for quality and originality and meticulously sliced and coded. What's more, they're absolutely free! You can do a lot with them. You can modify them. You can use them to design websites for clients, so long as you agree with the <a href=\"http://www.freewebsitetemplates.com/about/termsofuse/\">Terms of Use</a>. You can even remove all our links if you want to.</p>\n");
      out.write("                    <span>We Have Free Templates for Everyone</span>\n");
      out.write("                    <p>Looking for more templates? Just browse through all our <a href=\"http://www.freewebsitetemplates.com/\">Free Website Templates</a> and find what you're looking for. But if you don't find any website template you can use, you can try our <a href=\"http://www.freewebsitetemplates.com/freewebdesign/\">Free Web Design</a> service and tell us all about it. Maybe you're looking for something different, something special. And we love the challenge of doing something different and something special.</p>\n");
      out.write("                    <span>Be Part of Our Community</span>\n");
      out.write("                    <p>If you're experiencing issues and concerns about this website template, join the discussion <a href=\"http://www.freewebsitetemplates.com/forum/\">on our forum</a> and meet other people in the community who share the same interests with you.</p>\n");
      out.write("                    <span>Template details</span>\n");
      out.write("                    <p>Version 14<br />Website Template details, discussion and updates for this <a href=\"http://www.freewebsitetemplates.com/discuss/cakewebsitetemplate/\">Cake Website Template</a>. <br />\n");
      out.write("                        Website Template design by <a href=\"http://www.freewebsitetemplates.com/\">Free Website Templates</a>. <br />Please feel free to remove some or all the text and links of this page and replace it with your own About content.</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"section\">\n");
      out.write("                    <div id=\"visitshop\">\n");
      out.write("                        <div>\n");
      out.write("                            <p><span>Sweets from the heart</span> Treat your loveones</p>\n");
      out.write("                            <a href=\"\" class=\"visit\">visit the shop</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <h3>Please read</h3>\n");
      out.write("                        <p>This website template has been designed by <a href=\"http://www.freewebsitetemplates.com/\">Free Website Templates</a> for you, for free. You can replace all this text with your own text. You can remove any link to our website from this website template, you're free to use this website template without linking back to us. If you're having problems editing this website template, then don't hesitate to ask for help on the <a href=\"http://www.freewebsitetemplates.com/forum/\">Forum</a>.</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <h3>Address</h3>\n");
      out.write("                        <p>18th Floor, Lorem ipsum dolor <br /> Adipiscing Bldg., Quisque vestibulum Avenue <br /> Samar Loop St., Businees Park <br />Quisque vestibulum, 6029 <br />Lorem, Ipsum Dolor</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <a href=\"index.html\" class=\"callus\">CALL US <span>1-800-4216243</span></a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/newfooter.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
