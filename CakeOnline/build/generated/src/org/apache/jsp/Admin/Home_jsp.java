package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_redirect_url_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_setDataSource_var_user_url_scope_password_driver_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_query_var_dataSource;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_redirect_url_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_setDataSource_var_user_url_scope_password_driver_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_query_var_dataSource = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_redirect_url_nobody.release();
    _jspx_tagPool_c_if_test.release();
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
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\" />\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("        <title>Home</title>\r\n");
      out.write("        <!-- BOOTSTRAP STYLES-->\r\n");
      out.write("        <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\r\n");
      out.write("        <!-- FONTAWESOME ICONS STYLES-->\r\n");
      out.write("        <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\r\n");
      out.write("        <!--CUSTOM STYLES-->\r\n");
      out.write("        <link href=\"assets/css/style.css\" rel=\"stylesheet\" />    \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"assets/js/morris.min.js\"></script>\r\n");
      out.write("        <script src=\"assets/js/raphael.min.js\"></script>\r\n");
      out.write("        <script src=\"assets/js/morris.js\"></script>\r\n");
      out.write("        <link href=\"assets/css/morris.css\" rel=\"stylesheet\" />\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    ");
      if (_jspx_meth_sql_setDataSource_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("    ");
      if (_jspx_meth_sql_query_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        <div id=\"wrapper\">\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "inAdmin/top.jsp", out, false);
      out.write("\r\n");
      out.write("            <nav  class=\"navbar-default navbar-side\" role=\"navigation\">\r\n");
      out.write("                <div class=\"sidebar-collapse\">\r\n");
      out.write("                    <ul class=\"nav\" id=\"main-menu\">\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <div class=\"user-img-div\">\r\n");
      out.write("                                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${userAdmin.rows[0].ava}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"img-circle\" />\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a  href=\"#\"> <strong> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.userAdmin.rows[0].name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </strong></a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a class=\"active-menu\"   href=\"Home.jsp\"><i class=\"fa fa-home \"></i>Home</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"Order.jsp\"><i class=\"fa fa-cart-plus \"></i>Order </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"Product.jsp\"><i class=\"fa fa-birthday-cake \"></i>Product</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"Customer.jsp\"><i class=\"fa fa-user \"></i>Customer</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </nav>\r\n");
      out.write("            <div id=\"page-wrapper\" class=\"page-wrapper-cls\">\r\n");
      out.write("                <div id=\"page-inner\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-md-12\">\r\n");
      out.write("                            <h1 class=\"page-head-line\">Home Page</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\" col-md-3 col-sm-3\">\r\n");
      out.write("                            <div class=\"style-box-one Style-one-clr-one\">\r\n");
      out.write("                                <a href=\"Order.jsp\">\r\n");
      out.write("                                    <span class=\"glyphicon glyphicon-shopping-cart\"></span>\r\n");
      out.write("                                    <h5>Order</h5>\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\" col-md-3 col-sm-3\">\r\n");
      out.write("                            <div class=\"style-box-one Style-one-clr-two\">\r\n");
      out.write("                                <a href=\"Product.jsp\">\r\n");
      out.write("                                    <span class=\"fa fa-birthday-cake\"></span>\r\n");
      out.write("                                    <h5>Product</h5>\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\" col-md-3 col-sm-3\">\r\n");
      out.write("                            <div class=\"style-box-one Style-one-clr-three\">\r\n");
      out.write("                                <a href=\"Customer.jsp\">\r\n");
      out.write("                                    <span class=\"fa fa-user\"></span>\r\n");
      out.write("                                    <h5>Customer</h5>\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-md-12\">\r\n");
      out.write("                            <div class=\"alert alert-warning\">\r\n");
      out.write("                                Viết content vào đây\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- /.row -->\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-lg-12\">\r\n");
      out.write("                            <div class=\"panel panel-default\">\r\n");
      out.write("                                <div class=\"panel-heading\">\r\n");
      out.write("                                    So luong san pham\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <!-- /.panel-heading -->\r\n");
      out.write("                                <div class=\"panel-body\">\r\n");
      out.write("                                    <div id=\"morris-area-chart\"></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <!-- /.panel-body -->\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <!-- /.panel -->\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- /.row -->\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-lg-4\">\r\n");
      out.write("                            <div class=\"panel panel-default\">\r\n");
      out.write("                                <div class=\"panel-heading\">\r\n");
      out.write("                                    <h3 class=\"panel-title\"><i class=\"fa fa-long-arrow-right fa-fw\"></i> Donut Chart</h3>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"panel-body\">\r\n");
      out.write("                                    <div id=\"morris-donut-chart\"><svg height=\"347\" version=\"1.1\" width=\"306\" xmlns=\"http://www.w3.org/2000/svg\" style=\"overflow: hidden; position: relative;\"><desc style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Created with RaphaÃ«l 2.1.2</desc><defs style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"></defs><path fill=\"none\" stroke=\"#0b62a4\" d=\"M153,271.3333333333333A95.33333333333333,95.33333333333333,0,0,0,243.10368304650171,207.1411423345388\" stroke-width=\"2\" opacity=\"0\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;\"></path><path fill=\"#0b62a4\" stroke=\"#ffffff\" d=\"M153,274.3333333333333A98.33333333333333,98.33333333333333,0,0,0,245.93911363188113,208.12110835205925L283.4298069274535,221.0784368059408A138,138,0,0,1,153,314Z\" stroke-width=\"3\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"></path><path fill=\"none\" stroke=\"#3980b5\" d=\"M243.10368304650171,207.1411423345388A95.33333333333333,95.33333333333333,0,0,0,67.48942206387726,133.85281141671817\" stroke-width=\"2\" opacity=\"1\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 1;\"></path><path fill=\"#3980b5\" stroke=\"#ffffff\" d=\"M245.93911363188113,208.12110835205925A98.33333333333333,98.33333333333333,0,0,0,64.79852975120207,132.52650128647502L24.734133095815878,112.77921712507725A143,143,0,0,1,288.1555245697525,222.71171350180822Z\" stroke-width=\"3\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"></path><path fill=\"none\" stroke=\"#679dc6\" d=\"M67.48942206387726,133.85281141671817A95.33333333333333,95.33333333333333,0,0,0,152.97005015052835,271.33332862882196\" stroke-width=\"2\" opacity=\"0\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;\"></path><path fill=\"#679dc6\" stroke=\"#ffffff\" d=\"M64.79852975120207,132.52650128647502A98.33333333333333,98.33333333333333,0,0,0,152.96910767274778,274.3333284807779L152.9566460220935,313.999993189973A138,138,0,0,1,29.218953616941192,114.98973400881582Z\" stroke-width=\"3\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"></path><text x=\"153\" y=\"166\" text-anchor=\"middle\" font=\"10px &quot;Arial&quot;\" stroke=\"none\" fill=\"#000000\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: 800; font-stretch: normal; font-size: 15px; line-height: normal; font-family: Arial;\" font-size=\"15px\" font-weight=\"800\" transform=\"matrix(1.4793,0,0,1.4793,-73.3345,-84.8379)\" stroke-width=\"0.675990675990676\"><tspan dy=\"6\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">In-Store Sales</tspan></text><text x=\"153\" y=\"186\" text-anchor=\"middle\" font=\"10px &quot;Arial&quot;\" stroke=\"none\" fill=\"#000000\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 14px; line-height: normal; font-family: Arial;\" font-size=\"14px\" transform=\"matrix(1.9861,0,0,1.9861,-150.875,-175.5278)\" stroke-width=\"0.5034965034965035\"><tspan dy=\"5\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">30</tspan></text></svg></div>\r\n");
      out.write("                                    <div class=\"text-right\">\r\n");
      out.write("                                        <a href=\"#\">View Details <i class=\"fa fa-arrow-circle-right\"></i></a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-lg-4\">\r\n");
      out.write("                            <div class=\"panel panel-default\">\r\n");
      out.write("                                <div class=\"panel-heading\">\r\n");
      out.write("                                    <h3 class=\"panel-title\"><i class=\"fa fa-clock-o fa-fw\"></i> Tasks Panel</h3>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"panel-body\">\r\n");
      out.write("                                    <div class=\"list-group\">\r\n");
      out.write("                                        <a href=\"#\" class=\"list-group-item\">\r\n");
      out.write("                                            <span class=\"badge\">just now</span>\r\n");
      out.write("                                            <i class=\"fa fa-fw fa-calendar\"></i> Calendar updated\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                        <a href=\"#\" class=\"list-group-item\">\r\n");
      out.write("                                            <span class=\"badge\">4 minutes ago</span>\r\n");
      out.write("                                            <i class=\"fa fa-fw fa-comment\"></i> Commented on a post\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                        <a href=\"#\" class=\"list-group-item\">\r\n");
      out.write("                                            <span class=\"badge\">23 minutes ago</span>\r\n");
      out.write("                                            <i class=\"fa fa-fw fa-truck\"></i> Order 392 shipped\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                        <a href=\"#\" class=\"list-group-item\">\r\n");
      out.write("                                            <span class=\"badge\">46 minutes ago</span>\r\n");
      out.write("                                            <i class=\"fa fa-fw fa-money\"></i> Invoice 653 has been paid\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                        <a href=\"#\" class=\"list-group-item\">\r\n");
      out.write("                                            <span class=\"badge\">1 hour ago</span>\r\n");
      out.write("                                            <i class=\"fa fa-fw fa-user\"></i> A new user has been added\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                        <a href=\"#\" class=\"list-group-item\">\r\n");
      out.write("                                            <span class=\"badge\">2 hours ago</span>\r\n");
      out.write("                                            <i class=\"fa fa-fw fa-check\"></i> Completed task: \"pick up dry cleaning\"\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                        <a href=\"#\" class=\"list-group-item\">\r\n");
      out.write("                                            <span class=\"badge\">yesterday</span>\r\n");
      out.write("                                            <i class=\"fa fa-fw fa-globe\"></i> Saved the world\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                        <a href=\"#\" class=\"list-group-item\">\r\n");
      out.write("                                            <span class=\"badge\">two days ago</span>\r\n");
      out.write("                                            <i class=\"fa fa-fw fa-check\"></i> Completed task: \"fix error on sales page\"\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"text-right\">\r\n");
      out.write("                                        <a href=\"#\">View All Activity <i class=\"fa fa-arrow-circle-right\"></i></a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-lg-4\">\r\n");
      out.write("                            <div class=\"panel panel-default\">\r\n");
      out.write("                                <div class=\"panel-heading\">\r\n");
      out.write("                                    <h3 class=\"panel-title\"><i class=\"fa fa-money fa-fw\"></i> Transactions Panel</h3>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"panel-body\">\r\n");
      out.write("                                    <div class=\"table-responsive\">\r\n");
      out.write("                                        <table class=\"table table-bordered table-hover table-striped\">\r\n");
      out.write("                                            <thead>\r\n");
      out.write("                                                <tr>\r\n");
      out.write("                                                    <th>Order #</th>\r\n");
      out.write("                                                    <th>Order Date</th>\r\n");
      out.write("                                                    <th>Order Time</th>\r\n");
      out.write("                                                    <th>Amount (USD)</th>\r\n");
      out.write("                                                </tr>\r\n");
      out.write("                                            </thead>\r\n");
      out.write("                                            <tbody>\r\n");
      out.write("                                                <tr>\r\n");
      out.write("                                                    <td>3326</td>\r\n");
      out.write("                                                    <td>10/21/2013</td>\r\n");
      out.write("                                                    <td>3:29 PM</td>\r\n");
      out.write("                                                    <td>$321.33</td>\r\n");
      out.write("                                                </tr>\r\n");
      out.write("                                                <tr>\r\n");
      out.write("                                                    <td>3325</td>\r\n");
      out.write("                                                    <td>10/21/2013</td>\r\n");
      out.write("                                                    <td>3:20 PM</td>\r\n");
      out.write("                                                    <td>$234.34</td>\r\n");
      out.write("                                                </tr>\r\n");
      out.write("                                                <tr>\r\n");
      out.write("                                                    <td>3324</td>\r\n");
      out.write("                                                    <td>10/21/2013</td>\r\n");
      out.write("                                                    <td>3:03 PM</td>\r\n");
      out.write("                                                    <td>$724.17</td>\r\n");
      out.write("                                                </tr>\r\n");
      out.write("                                                <tr>\r\n");
      out.write("                                                    <td>3323</td>\r\n");
      out.write("                                                    <td>10/21/2013</td>\r\n");
      out.write("                                                    <td>3:00 PM</td>\r\n");
      out.write("                                                    <td>$23.71</td>\r\n");
      out.write("                                                </tr>\r\n");
      out.write("                                                <tr>\r\n");
      out.write("                                                    <td>3322</td>\r\n");
      out.write("                                                    <td>10/21/2013</td>\r\n");
      out.write("                                                    <td>2:49 PM</td>\r\n");
      out.write("                                                    <td>$8345.23</td>\r\n");
      out.write("                                                </tr>\r\n");
      out.write("                                                <tr>\r\n");
      out.write("                                                    <td>3321</td>\r\n");
      out.write("                                                    <td>10/21/2013</td>\r\n");
      out.write("                                                    <td>2:23 PM</td>\r\n");
      out.write("                                                    <td>$245.12</td>\r\n");
      out.write("                                                </tr>\r\n");
      out.write("                                                <tr>\r\n");
      out.write("                                                    <td>3320</td>\r\n");
      out.write("                                                    <td>10/21/2013</td>\r\n");
      out.write("                                                    <td>2:15 PM</td>\r\n");
      out.write("                                                    <td>$5663.54</td>\r\n");
      out.write("                                                </tr>\r\n");
      out.write("                                                <tr>\r\n");
      out.write("                                                    <td>3319</td>\r\n");
      out.write("                                                    <td>10/21/2013</td>\r\n");
      out.write("                                                    <td>2:13 PM</td>\r\n");
      out.write("                                                    <td>$943.45</td>\r\n");
      out.write("                                                </tr>\r\n");
      out.write("                                            </tbody>\r\n");
      out.write("                                        </table>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"text-right\">\r\n");
      out.write("                                        <a href=\"#\">View All Transactions <i class=\"fa fa-arrow-circle-right\"></i></a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- /. PAGE INNER  -->\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
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
      out.write("        <script>\r\n");
      out.write("            $(function () {\r\n");
      out.write("\r\n");
      out.write("                Morris.Area({\r\n");
      out.write("                    element: 'morris-area-chart',\r\n");
      out.write("                    data: [\r\n");
      out.write("            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                    ],\r\n");
      out.write("                    xkey: 'month',\r\n");
      out.write("                    ykeys: ['quantity'],\r\n");
      out.write("                    labels: ['so luong'],\r\n");
      out.write("                    pointSize: 2,\r\n");
      out.write("                    hideHover: 'auto',\r\n");
      out.write("                    resize: true\r\n");
      out.write("                });\r\n");
      out.write("            });\r\n");
      out.write("        </script>\r\n");
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
    _jspx_th_sql_query_0.setVar("Revenue");
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
          out.write("        SELECT SUM(total) AS cTotal, MONTH(OrderList.deliveriDate) AS cMonth FROM OrderList GROUP BY MONTH(OrderList.deliveriDate);\r\n");
          out.write("    ");
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
        out.write("\r\n");
        out.write("            ");
        if (_jspx_meth_c_redirect_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\r\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("i");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Revenue.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                        {\r\n");
          out.write("                            month: '2011-");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.cMonth}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("',\r\n");
          out.write("                            quantity: ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.cTotal}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                        },\r\n");
          out.write("            ");
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
