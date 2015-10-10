package org.apache.jsp.Client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sitemap_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<img src=\"../../../../../../Desktop/13755211047.jpg\" alt=\"\"/>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <script language=\"javascript\" src=\"http://code.jquery.com/jquery-1.9.1.js\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style1.css\" />\n");
      out.write("        <style> \n");
      out.write("        ul li{ list-style-type: none;}\n");
      out.write("            a{ text-decoration: none;}\n");
      out.write("            ul li .submenu{ display: none;}\n");
      out.write("            ul li.selected .submenu{ display: block;}\n");
      out.write("            .submenu ul{ margin: 0px; padding: 0px;}\n");
      out.write("            \n");
      out.write("            ul li ul li{margin-left: 25px}            \n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("        <script language=\"javascript\">\n");
      out.write("            /*VIẾT JAVASCRIPT TẠI ĐÂY*/\n");
      out.write("            $(document).ready(function() {\n");
      out.write("                $(\"ul li a\").click(function() \n");
      out.write("                {\n");
      out.write("                    var li = $(this).parent();\n");
      out.write("\n");
      out.write("                    // Kiểm tra có phải click vào menu đã active ko\n");
      out.write("                    // nếu phải thì ko làm gì, ngược lại sẽ xử lý xổ menu con ra\n");
      out.write("                    if (li.hasClass(\"selected\")) {\n");
      out.write("                        return false;\n");
      out.write("                    } \n");
      out.write("                    else {\n");
      out.write("                        // Xóa class selected khỏi các thẻ li khác\n");
      out.write("                        $('ul li').removeClass('selected');\n");
      out.write("                        // Thêm class selected vào thẻ li hiện tại\n");
      out.write("                        li.addClass(\"selected\");\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    // return false nghĩa là cho trang đứng im\n");
      out.write("                    return false; \n");
      out.write("\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/menu.jsp", out, false);
      out.write("\n");
      out.write("        <div id=\"content\">\n");
      out.write("            <div id=\"blog\">\n");
      out.write("        <ul>\n");
      out.write("            <li><a  href=\"#\"><img src=\"images/13755211047.jpg\">  Home</a>\n");
      out.write("            </li>\n");
      out.write("            <li><a  href=\"#\"><img src=\"images/13755211047.jpg\">  All Cake</a>\n");
      out.write("                <div class=\"submenu\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"#\" style=\"color: #000\"><img src=\"images/thecake.png\" style=\"text-height: 5px\">  Birth Day</a></li>\n");
      out.write("                        <li><a href=\"#\" style=\"color: #000\"><img src=\"images/thecake.png\" style=\"text-height: 5px\">  Anniversary</a></li>\n");
      out.write("                        <li><a href=\"#\" style=\"color: #000\"><img src=\"images/thecake.png\" style=\"text-height: 5px\">  Engagement</a></li>\n");
      out.write("                        <li><a href=\"#\" style=\"color: #000\"><img src=\"images/thecake.png\" style=\"text-height: 5px\">  Marriage</a></li>\n");
      out.write("                        <li><a href=\"#\" style=\"color: #000\"><img src=\"images/thecake.png\" style=\"text-height: 5px\">  Dessert</a></li>\n");
      out.write("                    </ul>\t\n");
      out.write("                </div>\n");
      out.write("            </li>\n");
      out.write("            <li><a  href=\"#\"><img src=\"images/13755211047.jpg\">  Contact Us</a>\n");
      out.write("            </li>\n");
      out.write("            <li><a  href=\"#\"><img src=\"images/13755211047.jpg\">  SiteMap</a>\n");
      out.write("            </li>\n");
      out.write("            <li><a  href=\"#\"><img src=\"images/13755211047.jpg\">  Blog</a>\n");
      out.write("            </li>\n");
      out.write("        </ul>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("         ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/newfooter.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
