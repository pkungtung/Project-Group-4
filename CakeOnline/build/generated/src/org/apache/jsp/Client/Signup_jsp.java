package org.apache.jsp.Client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Signup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_set_var_value_nobody.release();
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_if_test.release();
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

<<<<<<< HEAD
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\" />\n");
      out.write("        <title>Sign Up </title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" />\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\n");
=======
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\" />\r\n");
      out.write("        <title>Sign Up </title>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" />\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\r\n");
>>>>>>> origin/master
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

  private boolean _jspx_meth_c_choose_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    HttpServletRequest request = (HttpServletRequest)_jspx_page_context.getRequest();
    HttpServletResponse response = (HttpServletResponse)_jspx_page_context.getResponse();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_0.setParent(null);
    int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
    if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
<<<<<<< HEAD
        out.write("\n");
        out.write("        ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
=======
        out.write("\r\n");
        out.write("        ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("            ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\r\n");
>>>>>>> origin/master
        out.write("    ");
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
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${!empty param.dangky}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
<<<<<<< HEAD
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_c_set_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_when_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_c_if_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_when_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                ");
        if (_jspx_meth_c_if_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_when_0, _jspx_page_context))
          return true;
        out.write("\n");
=======
        out.write("\r\n");
        out.write("            ");
        if (_jspx_meth_c_set_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_when_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("            ");
        if (_jspx_meth_c_if_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_when_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                ");
        if (_jspx_meth_c_if_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_when_0, _jspx_page_context))
          return true;
        out.write("\r\n");
>>>>>>> origin/master
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

  private boolean _jspx_meth_c_set_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_when_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_when_0);
    _jspx_th_c_set_0.setVar("dangky");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param['dangky']}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }

  private boolean _jspx_meth_c_if_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_when_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_when_0);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${dangky =='loi'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
<<<<<<< HEAD
        out.write("\n");
        out.write("                <script>\n");
        out.write("                    alert(\"Tài khoản tồn tại\");\n");
=======
        out.write("\r\n");
        out.write("                <script>\r\n");
        out.write("                    alert(\"Tài khoản tồn tại\");\r\n");
>>>>>>> origin/master
        out.write("                            window.location.href = \"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.u}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write('?');
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.p}", java.lang.String.class, (PageContext)_jspx_page_context, null));
<<<<<<< HEAD
        out.write("\";</script>\n");
=======
        out.write("\";</script>\r\n");
>>>>>>> origin/master
        out.write("                ");
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

  private boolean _jspx_meth_c_if_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_when_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_when_0);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${dangky =='thanhcong'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
<<<<<<< HEAD
        out.write("\n");
        out.write("                <script>\n");
        out.write("                            alert(\"Đăng ký thành công, mời bạn đăng nhập\");\n");
        out.write("                            window.location.href = \"Signin.jsp\";</script>\n");
=======
        out.write("\r\n");
        out.write("                <script>\r\n");
        out.write("                            alert(\"Đăng ký thành công, mời bạn đăng nhập\");\r\n");
        out.write("                            window.location.href = \"Signin.jsp\";</script>\r\n");
>>>>>>> origin/master
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    HttpServletRequest request = (HttpServletRequest)_jspx_page_context.getRequest();
    HttpServletResponse response = (HttpServletResponse)_jspx_page_context.getResponse();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_0.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    int _jspx_eval_c_otherwise_0 = _jspx_th_c_otherwise_0.doStartTag();
    if (_jspx_eval_c_otherwise_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
<<<<<<< HEAD
        out.write("\n");
        out.write("            <script language=\"JavaScript\">\n");
        out.write("\n");
        out.write("                        function isValidUsername() {\n");
        out.write("                        txtusername = document.myform.username;\n");
        out.write("                                regexU = /^[a-z0-9 ]{4,20}$/;\n");
        out.write("                                ;\n");
        out.write("                                testUsername = regexU.test(txtusername.value);\n");
        out.write("                                if (!testUsername) {\n");
        out.write("                        document.getElementById(\"failUser\").innerHTML = \"Tên đăng nhập không hợp lệ\";\n");
        out.write("                                return false;\n");
        out.write("                        } else {\n");
        out.write("                        document.getElementById(\"failUser\").innerHTML = \"\";\n");
        out.write("                                return true;\n");
        out.write("                        }\n");
        out.write("                        }\n");
        out.write("\n");
        out.write("                function isValidEmail() {\n");
        out.write("                email = document.myform.email;\n");
        out.write("                        reg1 = /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\n");
        out.write("                        testmail = reg1.test(email.value);\n");
        out.write("                        if (!testmail) {\n");
        out.write("                document.getElementById(\"failEmail\").innerHTML = \"Email không hợp lệ!\";\n");
        out.write("                        return false;\n");
        out.write("                } else {\n");
        out.write("                document.getElementById(\"failEmail\").innerHTML = \"\";\n");
        out.write("                        return true;\n");
        out.write("                }\n");
        out.write("                }\n");
        out.write("\n");
        out.write("\n");
        out.write("                function isValidPassword() {\n");
        out.write("                password = document.myform.password;\n");
        out.write("                        regexP = /^[A-Za-z0-9!@#$%...]{6,32}$/\n");
        out.write("                        testP = regexP.test(password.value);\n");
        out.write("                        if (!testP) {\n");
        out.write("                document.getElementById(\"password_error\").innerHTML = \"Password quá ngắn, từ 6 trở lên\";\n");
        out.write("                        return false;\n");
        out.write("                } else {\n");
        out.write("                document.getElementById(\"password_error\").innerHTML = \"\";\n");
        out.write("                        return true;\n");
        out.write("                }\n");
        out.write("                }\n");
        out.write("\n");
        out.write("\n");
        out.write("                function isValidPassword2() {\n");
        out.write("                password = document.myform.password;\n");
        out.write("                        password1 = document.myform.password1;\n");
        out.write("                        if (password1.value !== password.value) {\n");
        out.write("                document.getElementById(\"password1_error\").innerHTML = \"Mật khẩu xác nhận không khớp\";\n");
        out.write("                        return false;\n");
        out.write("                } else {\n");
        out.write("                document.getElementById(\"password1_error\").innerHTML = \"\";\n");
        out.write("                        return true;\n");
        out.write("                }\n");
        out.write("                }\n");
        out.write("\n");
        out.write("\n");
        out.write("                function checkUsername() {\n");
        out.write("                username_error = document.myform.username_error;\n");
        out.write("                        if (username_error.value !== null) {\n");
        out.write("                return false;\n");
        out.write("                } else {\n");
        out.write("                return true;\n");
        out.write("                }\n");
        out.write("                }\n");
        out.write("                function checkinput() {\n");
        out.write("\n");
        out.write("                checkbox = document.myform.checkbox;\n");
        out.write("                        if (!isValidUsername()) {\n");
        out.write("                return false;\n");
        out.write("                }\n");
        out.write("\n");
        out.write("                if (!checkUsername()) {\n");
        out.write("                return false;\n");
        out.write("                }\n");
        out.write("\n");
        out.write("\n");
        out.write("                if (!isValidEmail()) {\n");
        out.write("                return false;\n");
        out.write("                }\n");
        out.write("\n");
        out.write("                if (!isValidPassword()) {\n");
        out.write("                return false;\n");
        out.write("                }\n");
        out.write("                if (!isValidPassword2()) {\n");
        out.write("                return false;\n");
        out.write("                }\n");
        out.write("\n");
        out.write("\n");
        out.write("\n");
        out.write("                if (checkbox.checked == false) {\n");
        out.write("                alert(\"Ban chua chon dong y voi dieu khoan cua website\");\n");
        out.write("                        return false;\n");
        out.write("                }\n");
        out.write("                return true;\n");
        out.write("                }\n");
        out.write("            </script>\n");
        out.write("            <body>\n");
        out.write("                ");
        org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/menu.jsp", out, false);
        out.write("\n");
        out.write("                <div id=\"content\">\n");
        out.write("                    <div>\n");
        out.write("                        <div id=\"account\">\n");
        out.write("                            <div>\n");
        out.write("                                <form action=\"Controlle?action=register\" method=\"POST\">\n");
        out.write("                                    <span>SIGN-UP</span>\n");
        out.write("                                    <table>\n");
        out.write("                                        <tr>\n");
        out.write("                                            <td><label for=\"login\">Login</label></td>\n");
        out.write("                                            <td>\n");
        out.write("                                                <input type=\"text\" id=\"login\" name=\"username\" placeholder=\"Enter your name\" onkeyup=\"isValidUsername()\" />\n");
        out.write("                                            </td>\n");
        out.write("                                            <p id =\"failUser\" style=\"color: red\"></p> \n");
        out.write("\n");
        out.write("                                        </tr>\n");
        out.write("                                        <tr>\n");
        out.write("                                            <td><label for=\"email\">E-mail</label></td>\n");
        out.write("                                            <td>\n");
        out.write("                                                <input type=\"text\" id=\"email\" name=\"email\" id=\"fname\" placeholder=\"Enter your email\" onkeyup=\"isValidEmail()\"/>\n");
        out.write("                                            </td>\n");
        out.write("                                            <p id =\"failEmail\" style=\"color: red\"></span>\n");
        out.write("                                        </tr>\n");
        out.write("\n");
        out.write("                                        <tr>\n");
        out.write("                                            <td><label for=\"password\">Password</label></td>\n");
        out.write("                                            <td>\n");
        out.write("                                                <input name=\"password\" type=\"text\" id=\"password\" placeholder=\"Password\" onkeyup=\"isValidPassword()\"/> \n");
        out.write("                                            </td>\n");
        out.write("                                            <p id =\"password_error\" style=\"color: red\"></span>\n");
        out.write("                                        </tr>\n");
        out.write("                                        <tr>\n");
        out.write("                                            <td><label for=\"confirmpass\">Confirm<br />Password</label></td>\n");
        out.write("                                            <td>\n");
        out.write("                                                <input type=\"text\" id=\"confirmpass\" name=\"confirmpass\" placeholder=\"Retype Password\" onkeyup=\"isValidPassword2() \"/>\n");
        out.write("                                            </td>\n");
        out.write("                                            <p id =\"password1_error\" style=\"color: red\"></span>\n");
        out.write("                                        </tr>\n");
        out.write("                                        <tr>\n");
        out.write("                                            <td></td>\n");
        out.write("                                            <td class=\"rememberme\">\n");
        out.write("                                                <label for=\"rememberme\">\n");
        out.write("                                                    <input type=\"checkbox\" name=\"checkbox\"  > Bạn đồng ý với <a href=\"about-common.html\">điều khoản</a> và <a href=\"about-common.html\">quy định của chúng tôi</a> \n");
        out.write("                                                </label>\n");
        out.write("                                            </td>\n");
        out.write("                                        </tr>\n");
        out.write("                                    </table>\n");
        out.write("                                    <input type=\"submit\" value=\"Sign-up\" class=\"submitbtn\" />\n");
        out.write("                                </form>\n");
        out.write("                            </div>\n");
        out.write("                        </div>\n");
        out.write("                    </div>\n");
        out.write("                </div>\n");
        out.write("                ");
        org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/newfooter.jsp", out, false);
        out.write("\n");
        out.write("            </body>\n");
=======
        out.write("\r\n");
        out.write("            <script language=\"JavaScript\">\r\n");
        out.write("\r\n");
        out.write("                        function isValidUsername() {\r\n");
        out.write("                        txtusername = document.myform.username;\r\n");
        out.write("                                regexU = /^[a-z0-9 ]{4,20}$/;\r\n");
        out.write("                                ;\r\n");
        out.write("                                testUsername = regexU.test(txtusername.value);\r\n");
        out.write("                                if (!testUsername) {\r\n");
        out.write("                        document.getElementById(\"failUser\").innerHTML = \"Tên đăng nhập không hợp lệ\";\r\n");
        out.write("                                return false;\r\n");
        out.write("                        } else {\r\n");
        out.write("                        document.getElementById(\"failUser\").innerHTML = \"\";\r\n");
        out.write("                                return true;\r\n");
        out.write("                        }\r\n");
        out.write("                        }\r\n");
        out.write("\r\n");
        out.write("                function isValidEmail() {\r\n");
        out.write("                email = document.myform.email;\r\n");
        out.write("                        reg1 = /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\r\n");
        out.write("                        testmail = reg1.test(email.value);\r\n");
        out.write("                        if (!testmail) {\r\n");
        out.write("                document.getElementById(\"failEmail\").innerHTML = \"Email không hợp lệ!\";\r\n");
        out.write("                        return false;\r\n");
        out.write("                } else {\r\n");
        out.write("                document.getElementById(\"failEmail\").innerHTML = \"\";\r\n");
        out.write("                        return true;\r\n");
        out.write("                }\r\n");
        out.write("                }\r\n");
        out.write("\r\n");
        out.write("\r\n");
        out.write("                function isValidPassword() {\r\n");
        out.write("                password = document.myform.password;\r\n");
        out.write("                        regexP = /^[A-Za-z0-9!@#$%...]{6,32}$/\r\n");
        out.write("                        testP = regexP.test(password.value);\r\n");
        out.write("                        if (!testP) {\r\n");
        out.write("                document.getElementById(\"password_error\").innerHTML = \"Password quá ngắn, từ 6 trở lên\";\r\n");
        out.write("                        return false;\r\n");
        out.write("                } else {\r\n");
        out.write("                document.getElementById(\"password_error\").innerHTML = \"\";\r\n");
        out.write("                        return true;\r\n");
        out.write("                }\r\n");
        out.write("                }\r\n");
        out.write("\r\n");
        out.write("\r\n");
        out.write("                function isValidPassword2() {\r\n");
        out.write("                password = document.myform.password;\r\n");
        out.write("                        password1 = document.myform.password1;\r\n");
        out.write("                        if (password1.value !== password.value) {\r\n");
        out.write("                document.getElementById(\"password1_error\").innerHTML = \"Mật khẩu xác nhận không khớp\";\r\n");
        out.write("                        return false;\r\n");
        out.write("                } else {\r\n");
        out.write("                document.getElementById(\"password1_error\").innerHTML = \"\";\r\n");
        out.write("                        return true;\r\n");
        out.write("                }\r\n");
        out.write("                }\r\n");
        out.write("\r\n");
        out.write("\r\n");
        out.write("                function checkUsername() {\r\n");
        out.write("                username_error = document.myform.username_error;\r\n");
        out.write("                        if (username_error.value !== null) {\r\n");
        out.write("                return false;\r\n");
        out.write("                } else {\r\n");
        out.write("                return true;\r\n");
        out.write("                }\r\n");
        out.write("                }\r\n");
        out.write("                function checkinput() {\r\n");
        out.write("\r\n");
        out.write("                checkbox = document.myform.checkbox;\r\n");
        out.write("                        if (!isValidUsername()) {\r\n");
        out.write("                return false;\r\n");
        out.write("                }\r\n");
        out.write("\r\n");
        out.write("                if (!checkUsername()) {\r\n");
        out.write("                return false;\r\n");
        out.write("                }\r\n");
        out.write("\r\n");
        out.write("\r\n");
        out.write("                if (!isValidEmail()) {\r\n");
        out.write("                return false;\r\n");
        out.write("                }\r\n");
        out.write("\r\n");
        out.write("                if (!isValidPassword()) {\r\n");
        out.write("                return false;\r\n");
        out.write("                }\r\n");
        out.write("                if (!isValidPassword2()) {\r\n");
        out.write("                return false;\r\n");
        out.write("                }\r\n");
        out.write("\r\n");
        out.write("\r\n");
        out.write("\r\n");
        out.write("                if (checkbox.checked == false) {\r\n");
        out.write("                alert(\"Ban chua chon dong y voi dieu khoan cua website\");\r\n");
        out.write("                        return false;\r\n");
        out.write("                }\r\n");
        out.write("                return true;\r\n");
        out.write("                }\r\n");
        out.write("            </script>\r\n");
        out.write("            <body>\r\n");
        out.write("                ");
        org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/menu.jsp", out, false);
        out.write("\r\n");
        out.write("                <div id=\"content\">\r\n");
        out.write("                    <div>\r\n");
        out.write("                        <div id=\"account\">\r\n");
        out.write("                            <div>\r\n");
        out.write("                                <form action=\"Controlle?action=register\" method=\"POST\" name=\"myform\" onsubmit=\"return checkinput()\">\r\n");
        out.write("                                    <div><span>SIGN-UP</span></div>\r\n");
        out.write("                                    <table>\r\n");
        out.write("                                        \r\n");
        out.write("                                        <tr>\r\n");
        out.write("                                            <td><label for=\"login\">Login</label></td>\r\n");
        out.write("                                            <td>\r\n");
        out.write("                                                <input type=\"text\" id=\"login\" name=\"username\" placeholder=\"Enter your name\" onkeyup=\"isValidUsername()\" />\r\n");
        out.write("                                                <p id =\"failUser\" style=\"color: red\"></p> \r\n");
        out.write("                                            </td>\r\n");
        out.write("                                            \r\n");
        out.write("\r\n");
        out.write("                                        </tr>\r\n");
        out.write("                                        <tr>\r\n");
        out.write("                                            <td><label for=\"email\">E-mail</label></td>\r\n");
        out.write("                                            <td>\r\n");
        out.write("                                                <input type=\"text\" id=\"email\" name=\"email\" id=\"fname\" placeholder=\"Enter your email\" onkeyup=\"isValidEmail()\"/>\r\n");
        out.write("                                             <p id =\"failEmail\" style=\"color: red\"></span>\r\n");
        out.write("                                            </td>\r\n");
        out.write("                                            \r\n");
        out.write("                                        </tr>\r\n");
        out.write("\r\n");
        out.write("                                        <tr>\r\n");
        out.write("                                            <td><label for=\"password\">Password</label></td>\r\n");
        out.write("                                            <td>\r\n");
        out.write("                                                <input name=\"password\" type=\"text\" id=\"password\" placeholder=\"Password\" onkeyup=\"isValidPassword()\"/> \r\n");
        out.write("                                            <p id =\"password_error\" style=\"color: red\"></span>\r\n");
        out.write("                                            </td>\r\n");
        out.write("                                            \r\n");
        out.write("                                        </tr>\r\n");
        out.write("                                        <tr>\r\n");
        out.write("                                            <td><label for=\"confirmpass\">Confirm<br />Password</label></td>\r\n");
        out.write("                                            <td>\r\n");
        out.write("                                                <input type=\"text\" id=\"confirmpass\" name=\"password1\" placeholder=\"Retype Password\" onkeyup=\"isValidPassword2() \"/>\r\n");
        out.write("                                            <p id =\"password1_error\" style=\"color: red\"></span>\r\n");
        out.write("                                            </td>\r\n");
        out.write("                                            \r\n");
        out.write("                                        </tr>\r\n");
        out.write("                                        <tr>\r\n");
        out.write("                                            <td></td>\r\n");
        out.write("                                            <td class=\"rememberme\">\r\n");
        out.write("                                                <label for=\"rememberme\">\r\n");
        out.write("                                                    <input type=\"checkbox\" name=\"checkbox\"  > Bạn đồng ý với <a href=\"about-common.html\">điều khoản</a> và <a href=\"about-common.html\">quy định của chúng tôi</a> \r\n");
        out.write("                                                </label>\r\n");
        out.write("                                            </td>\r\n");
        out.write("                                        </tr>\r\n");
        out.write("                                    </table>\r\n");
        out.write("                                    <input type=\"submit\" value=\"Sign-up\" class=\"submitbtn\" />\r\n");
        out.write("                                </form>\r\n");
        out.write("                            </div>\r\n");
        out.write("                        </div>\r\n");
        out.write("                    </div>\r\n");
        out.write("                </div>\r\n");
        out.write("                ");
        org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/newfooter.jsp", out, false);
        out.write("\r\n");
        out.write("            </body>\r\n");
>>>>>>> origin/master
        out.write("        ");
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
