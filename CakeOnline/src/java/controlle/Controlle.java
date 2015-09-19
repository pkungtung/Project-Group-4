/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlle;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DataProcess;

/**
 *
 * @author nguyen.muoi
 */
@WebServlet(name = "Controlle", urlPatterns = {"/Controlle"})
public class Controlle extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if (action.equals("Login")) {

            System.out.println("demo login");

            String url = request.getParameter("urlPage");
            String param = request.getParameter("paramPage");

            DataProcess dt = new DataProcess();
            String u = request.getParameter("txtUsername");
            String p = request.getParameter("txtPassword");
            if (request.getParameter("cbRemember") != null) {
                String[] cookieNames = {"user", "pass", "cb"};
                String[] cookieValues = {u.toString(), p.toString(), "ok"};
                for (int i = 0; i < cookieNames.length; i++) {
                    Cookie cookie = new Cookie(cookieNames[i], cookieValues[i]);
                    cookie.setMaxAge(30 * 24 * 60 * 60);
                    response.addCookie(cookie);
                }
            }

            if (dt.checkLogin(u, p)) {
                HttpSession session = request.getSession();
                session.setAttribute("login", u);
                //response.sendRedirect("" + url + "?" + param);
                  response.sendRedirect("/Client/Home.jsp?dangnhapthanhcong");
            } else {
                response.sendRedirect("404.jsp");
            }
        }

        if (action.equals("logout")) {

            HttpSession session = request.getSession();
            session.setAttribute("login", null);
            response.sendRedirect("Home.jsp");;

        }

        if (action.equals("register")) {

            String url = request.getParameter("urlPage");
            String param = request.getParameter("paramPage");

            DataProcess dt = new DataProcess();
            String u = request.getParameter("username");
            String p = request.getParameter("password");
            String e = request.getParameter("email");
            System.out.println(u + ", " + p + ", " + e);
            String l = "user";
            String s = "đang hoạt động";

            if (dt.addNewAcc(u, p, l, e)) {
                response.sendRedirect("Signup.jsp?dangky=thanhcong");
            } else {
                response.sendRedirect("Signup.jsp?dangky=loi");
            }

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
