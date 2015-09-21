package org.apache.jsp.Client.include;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_set_var_value_nobody.release();
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_otherwise.release();
    _jspx_tagPool_c_when_test.release();
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
      if (_jspx_meth_c_set_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("<!--<script type=\"text/javascript\" src=\"css/coin-slider.js\"></script>-->\n");
      out.write("<!--<script src=\"../jQuery/jquery 1.11.1 for cycle2.js\" type=\"text/javascript\"></script>-->\n");
      out.write("<!--<script src=\"../jQuery/jquery.cycle2.js\" type=\"text/javascript\"></script>-->\n");
      out.write("<script src=\"../jQuery/jquery-2.1.4.min.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js\"></script>\n");
      out.write("<script src=\"http://malsup.github.io/jquery.cycle2.js\"></script>\n");
      out.write("<script type = \"text/javascript\" >\n");
      out.write("//    $(function () {\n");
      out.write("//        $('.slide img:gt(0)').hide();\n");
      out.write("//        setInterval(function () {\n");
      out.write("//            $('.slide :first-child').fadeOut()\n");
      out.write("//                    .next('img').fadeIn()\n");
      out.write("//                    .end().appendTo('.slide');\n");
      out.write("//        },\n");
      out.write("//                1500);\n");
      out.write("//    })\n");
      out.write("    //slide\n");
      out.write("</script>\n");
      out.write("    <script>\n");
      out.write("< !--  // building select nav for mobile width only -->\n");
      out.write("            $(function () {\n");
      out.write("                // building select menu\n");
      out.write("                $('<select />').appendTo('nav');\n");
      out.write("\n");
      out.write("                // building an option for select menu\n");
      out.write("                $('<option />', {\n");
      out.write("                    'selected': 'selected',\n");
      out.write("                    'value': '',\n");
      out.write("                    'text': 'Choise Page...'\n");
      out.write("                }).appendTo('nav select');\n");
      out.write("\n");
      out.write("                $('nav ul li a').each(function () {\n");
      out.write("                    var target = $(this);\n");
      out.write("\n");
      out.write("                    $('<option />', {\n");
      out.write("                        'value': target.attr('href'),\n");
      out.write("                        'text': target.text()\n");
      out.write("                    }).appendTo('nav select');\n");
      out.write("\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                // on clicking on link\n");
      out.write("                $('nav select').on('change', function () {\n");
      out.write("                    window.location = $(this).find('option:selected').val();\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("\n");
      out.write("    // show and hide sub menu\n");
      out.write("    $(function () {\n");
      out.write("    $('nav ul li').hover(\n");
      out.write("            function () {\n");
      out.write("            //show its submenu\n");
      out.write("            $('ul', this).slideDown(150);\n");
      out.write("            },\n");
      out.write("            function () {\n");
      out.write("            //hide its submenu\n");
      out.write("            $('ul', this).slideUp(150);\n");
      out.write("    }\n");
      out.write("                );\n");
      out.write("            });\n");
      out.write("        //end\n");
      out.write("</script>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("    @import url(http://fonts.googleapis.com/css?family=Gentium+Basic:400,700|Yanone+Kaffeesatz);\n");
      out.write("    /*===== nav style ======*/\n");
      out.write("    #fdw nav select {\n");
      out.write("        display:none; /* this is just for the mobile display */\n");
      out.write("    }\n");
      out.write("    #fdw nav ul {\n");
      out.write("        display:block;\n");
      out.write("        z-index:999999;\n");
      out.write("    }\n");
      out.write("    #fdw nav ul li {\n");
      out.write("        display:inline-block;\n");
      out.write("        padding:50px 3px 30px;\n");
      out.write("        margin-left:30px;\n");
      out.write("        position:relative;\n");
      out.write("    }\n");
      out.write("    #fdw nav ul li a:link, #fdw nav ul li a:visited {\n");
      out.write("        color:#444;\n");
      out.write("        font:normal 20px 'Yanone Kaffeesatz', sans-serif;\n");
      out.write("        text-transform:uppercase;\n");
      out.write("        display:inline-block;\n");
      out.write("        position:relative;\n");
      out.write("    }\n");
      out.write("    #fdw nav ul li a:hover, #fdw nav ul li a:active {\n");
      out.write("        color:#e25d29;\n");
      out.write("        text-decoration:none;\n");
      out.write("    }\n");
      out.write("    #fdw nav ul li span {\n");
      out.write("        position:absolute;\n");
      out.write("        right:-12px;\n");
      out.write("        bottom:6px;\n");
      out.write("        width:7px;\n");
      out.write("        height:8px;\n");
      out.write("        margin:0 0 0 3px;\n");
      out.write("        float:right;\n");
      out.write("        display:block;\n");
      out.write("        background:url('images/nav_arrow.png') no-repeat left -8px;\n");
      out.write("        font:0/0 a;\n");
      out.write("    }\n");
      out.write("    #fdw nav ul li.current {\n");
      out.write("        border-bottom:2px solid #e25d29;\n");
      out.write("    }\n");
      out.write("    #fdw nav ul li.current a {\n");
      out.write("        color:#e25d29;\n");
      out.write("        cursor: default;\n");
      out.write("    }\n");
      out.write("    #fdw nav ul li.current a span {\n");
      out.write("        background:url('../images/nav_arrow.png') no-repeat left 0;\n");
      out.write("    }\n");
      out.write("    #fdw nav ul li.current ul li a {\n");
      out.write("        cursor:pointer;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    /*===== sub_menu Style =======*/\n");
      out.write("    #fdw nav ul li ul.sub_menu {\n");
      out.write("        position:absolute;\n");
      out.write("        top:90px;\n");
      out.write("        left:0;\n");
      out.write("        margin:0;\n");
      out.write("        padding:0;\n");
      out.write("        background:#fff;\n");
      out.write("        border:1px solid #ececec;\n");
      out.write("        border-top:5px solid #e25d29;\n");
      out.write("        display:none;\n");
      out.write("        z-index:999999;\n");
      out.write("        -moz-box-shadow: 0px 6px 7px #121012;\n");
      out.write("        -webkit-box-shadow: 0px 6px 7px #121012;\n");
      out.write("        box-shadow: 0px 6px 7px #121012;\n");
      out.write("    }\n");
      out.write("    #fdw nav ul li ul.sub_menu li.arrow_top {\n");
      out.write("        position:absolute;\n");
      out.write("        top:-12px;\n");
      out.write("        left:12px;\n");
      out.write("        width:13px;\n");
      out.write("        height:8px;\n");
      out.write("        display:block;\n");
      out.write("        border:none;\n");
      out.write("        background:url('images/arrow_top.png') no-repeat left top;\n");
      out.write("    }\n");
      out.write("    #fdw nav ul li ul.sub_menu li {\n");
      out.write("        float:none;\n");
      out.write("        margin:0;\n");
      out.write("        padding:0;\n");
      out.write("        border-bottom:1px solid #ececec;\n");
      out.write("    }\n");
      out.write("    #fdw nav ul li ul.sub_menu li a {\n");
      out.write("        white-space: nowrap;\n");
      out.write("        width: 150px;\n");
      out.write("        padding:12px;\n");
      out.write("        font:13px Arial, tahoma, sans-serif;\n");
      out.write("        text-transform:capitalize;\n");
      out.write("        color:#777;\n");
      out.write("    }\n");
      out.write("    #fdw nav ul li ul.sub_menu li a:hover {\n");
      out.write("        background:#f9f9f9;\n");
      out.write("        color:#333;\n");
      out.write("    }\n");
      out.write("    #fdw nav ul li ul.sub_menu li a.subCurrent {\n");
      out.write("        color:#e25d29;\n");
      out.write("        cursor:default;\n");
      out.write("    }\n");
      out.write("    #fdw nav ul li ul.sub_menu li a.subCurrent:hover {\n");
      out.write("        background:none;\n");
      out.write("    }\n");
      out.write("    /*===================== end Header style ======================*/\n");
      out.write("\n");
      out.write("\n");
      out.write("    @media only screen and (min-width: 768px) and (max-width: 959px) {\n");
      out.write("        /* nav */\n");
      out.write("        #fdw nav ul li{\n");
      out.write("            margin-left:12px;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    /* All Mobile Sizes (devices and browser) */\n");
      out.write("    @media only screen and (max-width: 767px) {\n");
      out.write("\n");
      out.write("        /* nav menu ul & select */\n");
      out.write("        #fdw nav ul {\n");
      out.write("            display:none;\n");
      out.write("        }\n");
      out.write("        #fdw nav select {\n");
      out.write("            width:100%;\n");
      out.write("            display:block;\n");
      out.write("            margin-bottom:30px;\n");
      out.write("            cursor:pointer;\n");
      out.write("            padding:6px;\n");
      out.write("            background:#f9f9f9;\n");
      out.write("            border:1px solid #e3e3e3;\n");
      out.write("            color:#777;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("\n");
      out.write("\n");
      out.write("    #progress { position: absolute; bottom: 0; height: 6px; width: 0px; background: #c00; z-index: 500; }\n");
      out.write("\n");
      out.write("    .slide {\n");
      out.write("        position:relative; \n");
      out.write("        width:940px; \n");
      out.write("        background: #aa6581;\n");
      out.write("        padding: 10px;\n");
      out.write("        height: 240px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("    <!-- freshdesignweb top bar -->\n");
      out.write("    <div class=\"freshdesignweb-top\">\n");
      out.write("\n");
      out.write("    </div><!--/ freshdesignweb top bar -->     \n");
      out.write("    <!-- start header here-->\n");
      out.write("    <header>\n");
      out.write("        <div id=\"fdw\">\n");
      out.write("            <!--nav-->\n");
      out.write("            <nav>\n");
      out.write("                <ul>\n");
      out.write("                    <li class=\"current\"><a href=\"http://www.freshdesignweb.com\">home<span class=\"arrow\"></span></a>\n");
      out.write("                        <ul style=\"display: none;\" class=\"sub_menu\">\n");
      out.write("                            <li class=\"arrow_top\"></li>\n");
      out.write("                            <li><a class=\"subCurrent\" href=\"http://www.freshdesignweb.com\">Home Service</a></li>\n");
      out.write("                            <li><a href=\"http://www.freshdesignweb.com\">Home Responsive</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li><a href=\"http://www.freshdesignweb.com\">about</a></li>\n");
      out.write("                    <li><a href=\"http://www.freshdesignweb.com\">services</a></li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"http://www.freshdesignweb.com\">portfolio<span class=\"arrow\"></span></a>\n");
      out.write("                        <ul style=\"display: none;\" class=\"sub_menu\">\n");
      out.write("                            <li class=\"arrow_top\"></li>\n");
      out.write("                            <li><a href=\"http://www.freshdesignweb.com\">Portfolio 3 </a></li>\n");
      out.write("                            <li><a href=\"http://www.freshdesignweb.com\">Portfolio 4 </a></li>\n");
      out.write("                            <li><a href=\"http://www.freshdesignweb.com\">Portfolio Single</a></li>\n");
      out.write("                            <li><a href=\"http://www.freshdesignweb.com\">Portfolio Two</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"http://www.freshdesignweb.com\">blog<span class=\"arrow\"></span></a>\n");
      out.write("                        <ul style=\"display: none;\" class=\"sub_menu\">\n");
      out.write("                            <li class=\"arrow_top\"></li>\n");
      out.write("                            <li><a href=\"http://www.freshdesignweb.com\">Design</a></li>\n");
      out.write("                            <li><a href=\"http://www.freshdesignweb.com/category/html5\">HTML5</a></li>\n");
      out.write("                            <li><a href=\"http://www.freshdesignweb.com/category/css-html\">CSS3</a>\n");
      out.write("                            </li><li><a href=\"http://www.freshdesignweb.com/category/ajax-jquery\">jQuery</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li><a href=\"http://www.freshdesignweb.com\">contact</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </div><!-- end fdw -->\n");
      out.write("    </header><!-- end header -->\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"header\">    \n");
      out.write("    <div>                \n");
      out.write("        <div>\n");
      out.write("            <div id=\"logo\">\n");
      out.write("                <a href=\"Home.jsp\"><img src=\"images/logo1.gif\" alt=\"Logo\"/></a>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                <div>\n");
      out.write("                    <a href=\"Signup.jsp\">My Account</a>\n");
      out.write("                    <a href=\"Home.jsp\">Help</a>\n");
      out.write("                    <a href=\"Signin.jsp\" class=\"last\">Sign in</a>\n");
      out.write("                </div>\n");
      out.write("                <form action=\"#\">\n");
      out.write("                    <input type=\"text\" id=\"search\" maxlength=\"30\" />\n");
      out.write("                    <input type=\"submit\" value=\"\" id=\"searchbtn\" />\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"slide\" style=\"height: 240px;\">\n");
      out.write("            <div class=\"cycle-slideshow\"  style=\"height: 240px;\"\n");
      out.write("                 data-cycle-pause-on-hover=\"true\"\n");
      out.write("                 data-cycle-fx=\"scrollHorz\"\n");
      out.write("                 data-cycle-speed=\"600\"    \n");
      out.write("                 data-cycle-timeout=\"1200\"\n");
      out.write("                 >\n");
      out.write("                <div class=\"cycle-prev\"></div>\n");
      out.write("                <div class=\"cycle-next\"></div>\n");
      out.write("                <a href=\"Home.jsp\"><img src=\"images/wedding-cupcakes-small.jpg\" height=\"240\" width=\"940\" alt=\"Image\"/></a>\n");
      out.write("                <img src=\"images/healthy.jpg\" width=\"960\" height=\"240\" />\n");
      out.write("                <img src=\"images/cakes1.jpg\" width=\"960\" height=\"240\" />\n");
      out.write("                <img src=\"images/dog.jpg\" width=\"960\" height=\"240\" />\n");
      out.write("                <img src=\"images/Star.jpg\" width=\"960\" height=\"240\" />\n");
      out.write("                <img src=\"images/valentine-day-cake.jpg\" width=\"960\" height=\"240\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div id=\"progress\"></div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
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

  private boolean _jspx_meth_c_set_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent(null);
    _jspx_th_c_set_0.setVar("path");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.servletPath}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }

  private boolean _jspx_meth_c_choose_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_0.setParent(null);
    int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
    if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_c_when_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_c_when_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_c_when_3((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("        ");
        int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
    return false;
  }

  private boolean _jspx_meth_c_when_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_0.setPageContext(_jspx_page_context);
    _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${path == '/Client/Home.jsp'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                <ul>\n");
        out.write("                    <li class=\"current\"><a href=\"Home.jsp\">Home</a></li>\n");
        out.write("                    <li><a href=\"Product.jsp\">All Cakes</a></li>\n");
        out.write("                    <li><a href=\"About.jsp\">About us</a></li>\n");
        out.write("                    <li><a href=\"Contact.jsp\">Contact Us</a></li>\n");
        out.write("                </ul>\n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
    return false;
  }

  private boolean _jspx_meth_c_when_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_1 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_1.setPageContext(_jspx_page_context);
    _jspx_th_c_when_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${path == '/Client/Product.jsp'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_1 = _jspx_th_c_when_1.doStartTag();
    if (_jspx_eval_c_when_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                <ul>\n");
        out.write("                    <li><a href=\"Home.jsp\">Home</a></li>\n");
        out.write("                    <li class=\"current\"><a href=\"Product.jsp\">All Cakes</a></li>\n");
        out.write("                    <li><a href=\"About.jsp\">About us</a></li>\n");
        out.write("                    <li><a href=\"Contact.jsp\">Contact Us</a></li>\n");
        out.write("                </ul>\n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_c_when_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_1);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_1);
    return false;
  }

  private boolean _jspx_meth_c_when_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_2 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_2.setPageContext(_jspx_page_context);
    _jspx_th_c_when_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${path == '/Client/Contact.jsp'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_2 = _jspx_th_c_when_2.doStartTag();
    if (_jspx_eval_c_when_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                <ul>\n");
        out.write("                    <li><a href=\"Home.jsp\">Home</a></li>\n");
        out.write("                    <li><a href=\"Product.jsp\">All Cakes</a></li>\n");
        out.write("                    <li><a href=\"About.jsp\">About us</a></li>\n");
        out.write("                    <li class=\"current\"><a href=\"Contact.jsp\">Contact Us</a></li>\n");
        out.write("                </ul>\n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_c_when_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_2);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_2);
    return false;
  }

  private boolean _jspx_meth_c_when_3(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_3 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_3.setPageContext(_jspx_page_context);
    _jspx_th_c_when_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${path == '/Client/About.jsp'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_3 = _jspx_th_c_when_3.doStartTag();
    if (_jspx_eval_c_when_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                <ul>\n");
        out.write("                    <li><a href=\"Home.jsp\">Home</a></li>\n");
        out.write("                    <li><a href=\"Product.jsp\">All Cakes</a></li>\n");
        out.write("                    <li class=\"current\"><a href=\"About.jsp\">About us</a></li>\n");
        out.write("                    <li><a href=\"Contact.jsp\">Contact Us</a></li>\n");
        out.write("                </ul>\n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_c_when_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_3);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_3);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_0.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    int _jspx_eval_c_otherwise_0 = _jspx_th_c_otherwise_0.doStartTag();
    if (_jspx_eval_c_otherwise_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                <ul>\n");
        out.write("                    <li><a href=\"Home.jsp\">Home</a></li>\n");
        out.write("                    <li><a href=\"Product.jsp\">All Cakes</a></li>\n");
        out.write("                    <li><a href=\"About.jsp\">About us</a></li>\n");
        out.write("                    <li><a href=\"Contact.jsp\">Contact Us</a></li>\n");
        out.write("                </ul>\n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_c_otherwise_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
    return false;
  }
}
