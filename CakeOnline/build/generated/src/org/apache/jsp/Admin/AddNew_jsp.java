package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AddNew_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_redirect_url_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_redirect_url_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_redirect_url_nobody.release();
    _jspx_tagPool_c_if_test.release();
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("        <title>Add New Product</title>\n");
      out.write("        <!-- BOOTSTRAP STYLES-->\n");
      out.write("        <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("        <!-- FONTAWESOME ICONS STYLES-->\n");
      out.write("        <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("        <!--CUSTOM STYLES-->\n");
      out.write("        <link href=\"assets/css/style.css\" rel=\"stylesheet\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "inAdmin/top.jsp", out, false);
      out.write("\n");
      out.write("            <!-- /. NAV TOP  -->\n");
      out.write("            <nav  class=\"navbar-default navbar-side\" role=\"navigation\">\n");
      out.write("                <div class=\"sidebar-collapse\">\n");
      out.write("                    <ul class=\"nav\" id=\"main-menu\">\n");
      out.write("                        <li>\n");
      out.write("                            <div class=\"user-img-div\">\n");
      out.write("                                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${userAdmin.rows[0].ava}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"img-circle\" />\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a  href=\"#\"> <strong> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.userAdmin.rows[0].name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </strong></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a  href=\"Home.jsp\"><i class=\"fa fa-home \"></i>Home</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"Order.jsp\"><i class=\"fa fa-cart-plus \"></i>Order </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"Product.jsp\"><i class=\"fa fa-birthday-cake \"></i>Product</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"Customer.jsp\"><i class=\"fa fa-user \"></i>Customer</a>\n");
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
      out.write("                            <h1 class=\"page-head-line\">Add New Product</h1>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-6\" style=\"margin: auto;\">\n");
      out.write("                            <div class=\"panel panel-default\">\n");
      out.write("                                <div class=\"panel-body\">\n");
      out.write("                                    <form action=\"../Controller?ac=add\" method=\"Post\" enctype=\"multipart/form-data\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Item Code</label>\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" name=\"itemcode\" placeholder=\"Item Code\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Product Name</label>\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" name=\"name\" placeholder=\"Name\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Price</label>\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" name=\"price\" placeholder=\"Price\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Egge</label>\n");
      out.write("                                            <select class=\"form-control\" name=\"egge\">\n");
      out.write("                                                <option>Yes</option>\n");
      out.write("                                                <option>No</option>\n");
      out.write("                                            </select>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Event</label>\n");
      out.write("                                            <select class=\"form-control\" name=\"event\">\n");
      out.write("                                                <option>Birthday</option>\n");
      out.write("                                                <option>Anniversary</option>\n");
      out.write("                                                <option>Engagement</option>\n");
      out.write("                                                <option>Marriage</option>\n");
      out.write("                                            </select>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Status</label>\n");
      out.write("                                            <select class=\"form-control\" name=\"status\">\n");
      out.write("                                                <option>Show</option>\n");
      out.write("                                                <option>Hidden</option>\n");
      out.write("                                            </select>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label for=\"exampleInputFile\">Product Image</label>\n");
      out.write("                                            <input type=\"file\" id=\"exampleInputFile\" name=\"file\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <button type=\"submit\" class=\"btn btn-default\">Submit</button>\n");
      out.write("                                        <hr>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
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
      out.write("        <script src=\"assets/js/jquery-1.11.1.js\"></script>\n");
      out.write("        <!-- BOOTSTRAP SCRIPTS -->\n");
      out.write("        <script src=\"assets/js/bootstrap.js\"></script>\n");
      out.write("        <!-- METISMENU SCRIPTS -->\n");
      out.write("        <script src=\"assets/js/jquery.metisMenu.js\"></script>\n");
      out.write("        <!-- CUSTOM SCRIPTS -->\n");
      out.write("        <script src=\"assets/js/custom.js\"></script>\n");
      out.write("\n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${empty sessionScope.userAdmin}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_c_redirect_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("        ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_redirect_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:redirect
    org.apache.taglibs.standard.tag.rt.core.RedirectTag _jspx_th_c_redirect_0 = (org.apache.taglibs.standard.tag.rt.core.RedirectTag) _jspx_tagPool_c_redirect_url_nobody.get(org.apache.taglibs.standard.tag.rt.core.RedirectTag.class);
    _jspx_th_c_redirect_0.setPageContext(_jspx_page_context);
    _jspx_th_c_redirect_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_redirect_0.setUrl("Administrator.jsp");
    int _jspx_eval_c_redirect_0 = _jspx_th_c_redirect_0.doStartTag();
    if (_jspx_th_c_redirect_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_redirect_url_nobody.reuse(_jspx_th_c_redirect_0);
      return true;
    }
    _jspx_tagPool_c_redirect_url_nobody.reuse(_jspx_th_c_redirect_0);
    return false;
  }
}
