package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Product_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_setDataSource_var_user_url_scope_password_driver_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_query_var_dataSource;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_setDataSource_var_user_url_scope_password_driver_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_query_var_dataSource = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_sql_setDataSource_var_user_url_scope_password_driver_nobody.release();
    _jspx_tagPool_sql_query_var_dataSource.release();
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\" />\r\n");
      out.write("        <title>The Pastry Shop</title>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" />\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      if (_jspx_meth_sql_setDataSource_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        ");
      if (_jspx_meth_sql_query_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/menu.jsp", out, false);
      out.write("\r\n");
      out.write("        <div id=\"content\">\r\n");
      out.write("            <div>\r\n");
      out.write("                <h1>All Cake</h1>\r\n");
      out.write("\r\n");
      out.write("                <ul>\r\n");
      out.write("                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                    <!--                    <li>\r\n");
      out.write("                                            <div>\r\n");
      out.write("                                                <div>\r\n");
      out.write("                                                    <h2><a href=\"Home.jsp\">Special Treats</a></h2>\r\n");
      out.write("                                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>\r\n");
      out.write("                                                    <a href=\"Home.jsp\" class=\"view\">view all</a>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <a href=\"Home.jsp\"><img src=\"images/special-treats.jpg\" alt=\"Image\" /></a>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li>\r\n");
      out.write("                                            <div>\r\n");
      out.write("                                                <div>\r\n");
      out.write("                                                    <h2><a href=\"Home.jsp\">Tarts</a></h2>\r\n");
      out.write("                                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>\r\n");
      out.write("                                                    <a href=\"Home.jsp\" class=\"view\">view all</a>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <a href=\"Home.jsp\"><img src=\"images/tarts.jpg\" alt=\"Image\" /></a>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li>\r\n");
      out.write("                                            <div>\r\n");
      out.write("                                                <div>\r\n");
      out.write("                                                    <h2><a href=\"Home.jsp\">Cakes</a></h2>\r\n");
      out.write("                                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>\r\n");
      out.write("                                                    <a href=\"Home.jsp\" class=\"view\">view all</a>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <a href=\"Home.jsp\"><img src=\"images/cakes.jpg\" alt=\"Image\" /></a>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li>\r\n");
      out.write("                                            <div>\r\n");
      out.write("                                                <div>\r\n");
      out.write("                                                    <h2><a href=\"Home.jsp\">Desserts</a></h2>\r\n");
      out.write("                                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>\r\n");
      out.write("                                                    <a href=\"Home.jsp\" class=\"view\">view all</a>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <a href=\"Home.jsp\"><img src=\"images/dessert.jpg\" alt=\"Image\" /></a>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li>\r\n");
      out.write("                                            <div>\r\n");
      out.write("                                                <div>\r\n");
      out.write("                                                    <h2><a href=\"Home.jsp\">Pastries</a></h2>\r\n");
      out.write("                                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>\r\n");
      out.write("                                                    <a href=\"Home.jsp\" class=\"view\">view all</a>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <a href=\"Home.jsp\"><img src=\"images/pastries.jpg\" alt=\"Image\" /></a>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li>\r\n");
      out.write("                                            <div>\r\n");
      out.write("                                                <div>\r\n");
      out.write("                                                    <h2><a href=\"Home.jsp\">Healthy Food</a></h2>\r\n");
      out.write("                                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>\r\n");
      out.write("                                                    <a href=\"Home.jsp\" class=\"view\">view all</a>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <a href=\"Home.jsp\"><img src=\"images/healthy-food.jpg\" alt=\"Image\" /></a>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </li>-->\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/newfooter.jsp", out, false);
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

  private boolean _jspx_meth_sql_query_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_0 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_sql_query_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_query_0.setParent(null);
    _jspx_th_sql_query_0.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${conn}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_query_0.setVar("list");
    int[] _jspx_push_body_count_sql_query_0 = new int[] { 0 };
    try {
      int _jspx_eval_sql_query_0 = _jspx_th_sql_query_0.doStartTag();
      if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = _jspx_page_context.pushBody();
          _jspx_push_body_count_sql_query_0[0]++;
          _jspx_th_sql_query_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
          _jspx_th_sql_query_0.doInitBody();
        }
        do {
          out.write("\r\n");
          out.write("            Select * from Product;\r\n");
          out.write("        ");
          int evalDoAfterBody = _jspx_th_sql_query_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
        if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
          out = _jspx_page_context.popBody();
          _jspx_push_body_count_sql_query_0[0]--;
      }
      if (_jspx_th_sql_query_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_sql_query_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_sql_query_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_sql_query_0.doFinally();
      _jspx_tagPool_sql_query_var_dataSource.reuse(_jspx_th_sql_query_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("p");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${list.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                        <li>\r\n");
          out.write("                            <div>\r\n");
          out.write("                                <div>\r\n");
          out.write("                                    <h2><a href=\"Home.jsp\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></h2>\r\n");
          out.write("                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>\r\n");
          out.write("                                    <a href=\"Home.jsp\" class=\"view\">view all</a>\r\n");
          out.write("                                </div>\r\n");
          out.write("                                    <!--<img src=\"imgProduct/1dress-birthday-cakes-for-girlsa8a4.png\" alt=\"\"/>-->\r\n");
          out.write("                                    <a href=\"Home.jsp\"><img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.img}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" height=\"400\" width=\"400\"  alt=\"Image\" /></a>\r\n");
          out.write("                            </div>\r\n");
          out.write("                        </li>\r\n");
          out.write("                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
