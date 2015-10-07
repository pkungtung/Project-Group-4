package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AddNew_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\" />\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("        <title>Add New Product</title>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "inAdmin/head.jsp", out, false);
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <div id=\"wrapper\">\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "inAdmin/top.jsp", out, false);
      out.write("\r\n");
      out.write("            <div id=\"page-wrapper\" class=\"page-wrapper-cls\">\r\n");
      out.write("                <div id=\"page-inner\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-md-12\">\r\n");
      out.write("                            <h1 class=\"page-head-line\">Add New Product</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-md-6\" style=\"margin: auto;\">\r\n");
      out.write("                            <div class=\"panel panel-default\">\r\n");
      out.write("                                <div class=\"panel-body\">\r\n");
      out.write("                                    <form action=\"../Controller?ac=add\" method=\"Post\" enctype=\"multipart/form-data\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Item Code</label>\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" name=\"itemcode\" placeholder=\"Item Code\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Product Name</label>\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" name=\"name\" placeholder=\"Name\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Price</label>\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" name=\"price\" placeholder=\"Price\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Egge</label>\r\n");
      out.write("                                            <select class=\"form-control\" name=\"egge\">\r\n");
      out.write("                                                <option>Yes</option>\r\n");
      out.write("                                                <option>No</option>\r\n");
      out.write("                                            </select>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Event</label>\r\n");
      out.write("                                            <select class=\"form-control\" name=\"event\">\r\n");
      out.write("                                                <option>Birthday</option>\r\n");
      out.write("                                                <option>Anniversary</option>\r\n");
      out.write("                                                <option>Engagement</option>\r\n");
      out.write("                                                <option>Marriage</option>\r\n");
      out.write("                                            </select>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label>Status</label>\r\n");
      out.write("                                            <select class=\"form-control\" name=\"status\">\r\n");
      out.write("                                                <option>Show</option>\r\n");
      out.write("                                                <option>Hidden</option>\r\n");
      out.write("                                            </select>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <label for=\"exampleInputFile\">Product Image</label>\r\n");
      out.write("                                            <input type=\"file\" id=\"exampleInputFile\" name=\"file\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <button type=\"submit\" class=\"btn btn-default\">Submit</button>\r\n");
      out.write("                                        <hr>\r\n");
      out.write("                                    </form>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- /. PAGE INNER  -->\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /. PAGE WRAPPER  -->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /. WRAPPER  -->\r\n");
      out.write("        <footer >\r\n");
      out.write("            &copy; 2015 Design By : <a href=\"#\" target=\"_blank\">Group 4 GC 0902</a>\r\n");
      out.write("        </footer>\r\n");
      out.write("        <!-- /. FOOTER  -->\r\n");
      out.write("        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->\r\n");
      out.write("        <!-- JQUERY SCRIPTS -->\r\n");
      out.write("        <script src=\"assets/js/jquery-1.11.1.js\"></script>\r\n");
      out.write("        <!-- BOOTSTRAP SCRIPTS -->\r\n");
      out.write("        <script src=\"assets/js/bootstrap.js\"></script>\r\n");
      out.write("        <!-- METISMENU SCRIPTS -->\r\n");
      out.write("        <script src=\"assets/js/jquery.metisMenu.js\"></script>\r\n");
      out.write("        <!-- CUSTOM SCRIPTS -->\r\n");
      out.write("        <script src=\"assets/js/custom.js\"></script>\r\n");
      out.write("\r\n");
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
