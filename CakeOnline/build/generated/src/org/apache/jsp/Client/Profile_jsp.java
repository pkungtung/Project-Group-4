package org.apache.jsp.Client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_setDataSource_var_user_url_scope_password_driver_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_sql_setDataSource_var_user_url_scope_password_driver_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_sql_setDataSource_var_user_url_scope_password_driver_nobody.release();
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("        <title>Profile</title>\n");
      out.write("        <!-- BOOTSTRAP STYLES-->\n");
      out.write("        <link href=\"../Admin/assets/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!-- FONTAWESOME ICONS STYLES-->\n");
      out.write("        <link href=\"../Admin/assets/css/font-awesome.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!--CUSTOM STYLES-->\n");
      out.write("        <link href=\"../Admin/assets/css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");
      if (_jspx_meth_sql_setDataSource_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../Admin/inAdmin/top.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("            <!-- /. NAV TOP  -->\n");
      out.write("            <nav  class=\"navbar-default navbar-side\" role=\"navigation\">\n");
      out.write("                <div class=\"sidebar-collapse\">\n");
      out.write("                    <ul class=\"nav\" id=\"main-menu\">\n");
      out.write("                        <li>\n");
      out.write("                            <div class=\"user-img-div\">\n");
      out.write("                                <img src=\"images/placeholder-user.jpg\" class=\"img-circle\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a> <strong> User </strong></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"Order.jsp\"><i class=\"fa fa-cart-plus \"></i>Order </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"DetailAcc.jsp\"><i class=\"fa fa-user \"></i>Edit Your Account</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </nav>\n");
      out.write("            <!-- /. SIDEBAR MENU (navbar-side) -->\n");
      out.write("            <div id=\"page-wrapper\" class=\"page-wrapper-cls\">\n");
      out.write("                <div id=\"page-inner\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                            <h1 class=\"page-head-line\">Order List</h1>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!-- /. PAGE INNER  -->\n");
      out.write("            </div>\n");
      out.write("            <!-- /. PAGE WRAPPER  -->\n");
      out.write("        </div>\n");
      out.write("        <!-- /. WRAPPER  -->\n");
      out.write("        <footer >\n");
      out.write("            &copy; 2015 Design By : <a href=\"#\" target=\"_blank\">Group 4 GC 0902</a>\n");
      out.write("        </footer>\n");
      out.write("        <!-- /. FOOTER  -->\n");
      out.write("        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->\n");
      out.write("        <!-- JQUERY SCRIPTS -->\n");
      out.write("        <script src=\"../Admin/assets/js/jquery-1.11.1.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- BOOTSTRAP SCRIPTS -->\n");
      out.write("        <script src=\"../Admin/assets/js/bootstrap.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- METISMENU SCRIPTS -->\n");
      out.write("        <script src=\"../Admin/assets/js/jquery.metisMenu.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- CUSTOM SCRIPTS -->\n");
      out.write("        <script src=\"../Admin/assets/js/custom.js\" type=\"text/javascript\"></script>\n");
      out.write("        \n");
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

  private boolean _jspx_meth_sql_setDataSource_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:setDataSource
    org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag _jspx_th_sql_setDataSource_0 = (org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag) _jspx_tagPool_sql_setDataSource_var_user_url_scope_password_driver_nobody.get(org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag.class);
    _jspx_th_sql_setDataSource_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_setDataSource_0.setParent(null);
    _jspx_th_sql_setDataSource_0.setVar("conn");
    _jspx_th_sql_setDataSource_0.setDriver("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    _jspx_th_sql_setDataSource_0.setUrl("jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4");
    _jspx_th_sql_setDataSource_0.setUser("sa");
    _jspx_th_sql_setDataSource_0.setPassword("123456");
    _jspx_th_sql_setDataSource_0.setScope("session");
    int _jspx_eval_sql_setDataSource_0 = _jspx_th_sql_setDataSource_0.doStartTag();
    if (_jspx_th_sql_setDataSource_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_sql_setDataSource_var_user_url_scope_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
      return true;
    }
    _jspx_tagPool_sql_setDataSource_var_user_url_scope_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
    return false;
  }
}
