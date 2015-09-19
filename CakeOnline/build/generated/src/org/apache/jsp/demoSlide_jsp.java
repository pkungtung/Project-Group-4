package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class demoSlide_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"css/coin-slider.js\"></script>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/coin-slider-styles.css\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("        <title>Coin Slider: jQuery Image Slider Plugin with Unique Effects</title>\n");
      out.write("    </head>\n");
      out.write("    <body> \n");
      out.write("\n");
      out.write("        <div id=\"games\">\n");
      out.write("\n");
      out.write("            <a href=\"http://www.minininjas.com/\" target=\"_blank\">\n");
      out.write("                <img src=\"http://workshop.rs/projects/coin-slider/games/mini_ninjas.jpg\" alt=\"Mini Ninjas\" />\n");
      out.write("                <span>\n");
      out.write("                    <b>Mini Ninjas</b><br />\n");
      out.write("                    Your quest to defeat the Evil Samurai Warlord has begun. Control the powers of nature, possess creatures, use your\n");
      out.write("                    furious Ninja skills to free your Ninja friends.\n");
      out.write("                </span>\n");
      out.write("            </a>\n");
      out.write("\n");
      out.write("            <a href=\"http://www.princeofpersiagame.com/\" target=\"_blank\">\n");
      out.write("                <img src=\"http://workshop.rs/projects/coin-slider/games/prince_of_persia.jpg\" alt=\"Price of Persia\" />\n");
      out.write("            </a>\n");
      out.write("\n");
      out.write("            <a href=\"http://spidermandimensions.marvel.com/\" target=\"_blank\">\n");
      out.write("                <img src=\"http://workshop.rs/projects/coin-slider/games/spiderman_shattered_dimensions.jpg\" alt=\"Spiderman: Shattered Dimensions\" />\n");
      out.write("            </a>\n");
      out.write("\n");
      out.write("            <a href=\"http://brinkthegame.com/\" target=\"_blank\">\n");
      out.write("                <img src=\"http://workshop.rs/projects/coin-slider/games/brink.jpg\" alt=\"Brink\" />\n");
      out.write("            </a>\n");
      out.write("\n");
      out.write("            <a href=\"http://www.godofwar.com/\" target=\"_blank\" >\n");
      out.write("                <img src=\"http://workshop.rs/projects/coin-slider/games/god_of_war_3.jpg\" alt=\"God of War III\" />\n");
      out.write("            </a>\n");
      out.write("\n");
      out.write("            <a href=\"http://www.borderlandsthegame.com/\" target=\"_blank\">\n");
      out.write("                <img src=\"http://workshop.rs/projects/coin-slider/games/borderlands.jpg\" alt=\"Borderlands\" />\n");
      out.write("                <span>\n");
      out.write("                    <b>Borderlands</b><br />\n");
      out.write("                    Fun combat and a steady flow of rewards make this journey a massively enjoyable one, especially with some fellow mercenaries along for the ride.\n");
      out.write("                </span>\n");
      out.write("            </a>\n");
      out.write("\n");
      out.write("            <a href=\"http://www.swtor.com/\" target=\"_blank\">\n");
      out.write("                <img src=\"http://workshop.rs/projects/coin-slider/games/star_wars_the_old_republic.jpg\" alt=\"Star Wars: The Old Republic\" />\n");
      out.write("            </a>\n");
      out.write("\n");
      out.write("            <a href=\"http://www.batmanarkhamasylum.com/\" target=\"_blank\">\n");
      out.write("                <img src=\"http://workshop.rs/projects/coin-slider/games/batman_arkham_asylum.jpg\" alt=\"Batman: Arkham Asylum\" />\n");
      out.write("            </a>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("            $('#games').coinslider();\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </body>\n");
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
}
