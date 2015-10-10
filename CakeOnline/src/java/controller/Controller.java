/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Entity.Cake;
import Entity.Cart;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DataProcess;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author ChungPhung
 */
public class Controller extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private final String UPLOAD_DIRECTORY = "C:\\Users\\Pkung\\Documents\\GitHub\\Project-Group-4\\CakeOnline\\web\\imgProduct";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String ac = request.getParameter("ac");
        if ("delProduct".equals(ac)) {
            String id = request.getParameter("id");
            HttpSession session = request.getSession();
            Cart cr = (Cart) session.getAttribute("cart");
            if (cr == null) {
                cr = new Cart();
            }
            cr.deleteProduct(id);
            response.sendRedirect("/CakeOnline/Client/MyCart.jsp");
        }
        if ("delCart".equals(ac)) {
            HttpSession ss = request.getSession();
            Cart cr = (Cart) ss.getAttribute("cart");
            if (cr == null) {
                cr = new Cart();
            }
            cr.delCart();
            response.sendRedirect("/CakeOnline/Client/MyCart.jsp");
        }
        if ("updateCart".equals(ac)) {
            if (request.getParameterValues("id") != null) {
                String[] id = request.getParameterValues("id");
                String[] quantity = request.getParameterValues("quantity");
                HttpSession session = request.getSession();
                Cart card = (Cart) session.getAttribute("cart");
                if (card == null) {
                    card = new Cart();
                }
                card.updateCart(id, quantity);
                session.setAttribute("cart", card);
            }

            response.sendRedirect("/CakeOnline/Client/MyCart.jsp");
        }
        if ("addCart".equals(ac)) {
            String id = request.getParameter("id");
            String quantity = request.getParameter("quantity");
            HttpSession session = request.getSession();
            Cart cd = (Cart) session.getAttribute("cart");
            if (cd == null) {
                cd = new Cart();
            }
            cd.addCart(id, quantity);
            session.setAttribute("cart", cd);
            response.sendRedirect(session.getAttribute("urlPage").toString() + "?id=" + id);
        }
        if ("add1Item".equals(ac)) {
            String id = request.getParameter("id");
            HttpSession session = request.getSession();
            Cart cd = (Cart) session.getAttribute("cart");
            if (cd == null) {
                cd = new Cart();
            }
            cd.addItem(id);
            session.setAttribute("cart", cd);
            response.sendRedirect(session.getAttribute("urlPage").toString());
        }
        if ("add".equals(ac)) {
            String itemCode = null;
            String name = null;
            float price = 0;
            String egg = null;
            String img = null;
            String event = null;
            String stt = null;
            if (ServletFileUpload.isMultipartContent(request)) {

                try {
                    List<FileItem> multiparts = new ServletFileUpload(
                            new DiskFileItemFactory()).parseRequest(request);
                    for (FileItem item : multiparts) {

                        if (!item.isFormField()) {
                            img = new File(item.getName()).getName();
                            item.write(new File(UPLOAD_DIRECTORY + File.separator + img));
                            System.out.println("Name Img is:" + img);
                        } else {
                            if ("itemcode".equals(item.getFieldName())) {
                                itemCode = (String) item.getString();
                            }
                            if ("name".equals(item.getFieldName())) {
                                name = (String) item.getString();
                                name = new String(name.getBytes("iso-8859-1"), "UTF-8");
                            }
                            if ("price".equalsIgnoreCase(item.getFieldName())) {
                                price = Float.parseFloat(item.getString());
                                System.out.println("Price is:" + price);
                            }
                            if ("egge".equals(item.getFieldName())) {
                                egg = (String) item.getString();
                            }
                            if ("event".equalsIgnoreCase(item.getFieldName())) {
                                event = item.getString();
                            }
                            if ("status".equalsIgnoreCase(item.getFieldName())) {
                                stt = item.getString();
                            }
                        }
                    }
                    //File uploaded successfully
                    request.setAttribute("message", "File Uploaded Successfully");
                    Cake ca = new Cake(itemCode, name, price, egg, "../imgProduct/" + img, event, stt);
                    DataProcess dt = new DataProcess();
                    if (dt.addProduct(ca)) {
                        response.sendRedirect("/CakeOnline/Admin/Product.jsp");
                    } else {
                        response.sendRedirect("/CakeOnline/Admin/AddNew.jsp");
                    }

                } catch (Exception ex) {
                    request.setAttribute("message", "File Upload Failed due to " + ex);
                }

            } else {
                request.setAttribute("message",
                        "Sorry this Servlet only handles file upload request");
                response.sendRedirect("../Admin/AddProduct.jsp");
            }
        }
        if ("updateProduct".equals(ac)) {
            String itemCode = null;
            String name = null;
            float price = 0;
            String egg = null;
            String img = null;
            String event = null;
            String stt = null;
            if (ServletFileUpload.isMultipartContent(request)) {

                try {
                    List<FileItem> multiparts = new ServletFileUpload(
                            new DiskFileItemFactory()).parseRequest(request);
                    for (FileItem item : multiparts) {

                        if (!item.isFormField()) {
                            img = new File(item.getName()).getName();
                            item.write(new File(UPLOAD_DIRECTORY + File.separator + img));
                        } else {
                            if ("itemcode".equals(item.getFieldName())) {
                                itemCode = (String) item.getString();
                            }
                            if ("name".equals(item.getFieldName())) {
                                name = (String) item.getString();
                                name = new String(name.getBytes("iso-8859-1"), "UTF-8");
                            }
                            if ("price".equalsIgnoreCase(item.getFieldName())) {
                                price = Float.parseFloat(item.getString());
                            }
                            if ("egge".equals(item.getFieldName())) {
                                egg = (String) item.getString();
                            }
                            if ("event".equalsIgnoreCase(item.getFieldName())) {
                                event = item.getString();
                            }
                            if ("status".equalsIgnoreCase(item.getFieldName())) {
                                stt = item.getString();
                            }
                        }
                    }
                    //File uploaded successfully
                    request.setAttribute("message", "File Uploaded Successfully");
                    Cake ca = new Cake(itemCode, name, price, egg, "../imgProduct/" + img, event, stt);
                    DataProcess dt = new DataProcess();
                    if (dt.updateProduct(ca)) {
                        response.sendRedirect("/CakeOnline/Admin/Product.jsp");
                    } else {
                        response.sendRedirect("/CakeOnline/Admin/Update.jsp");
                    }

                } catch (Exception ex) {
                    request.setAttribute("message", "File Upload Failed due to " + ex);

                    List<FileItem> multiparts;
                    try {
                        multiparts = new ServletFileUpload(
                                new DiskFileItemFactory()).parseRequest(request);
                        for (FileItem item : multiparts) {

                            if (!item.isFormField()) {
                                img = new File(item.getName()).getName();
                            } else {
                                if ("itemcode".equals(item.getFieldName())) {
                                    itemCode = (String) item.getString();
                                }
                                if ("name".equals(item.getFieldName())) {
                                    name = (String) item.getString();
                                    name = new String(name.getBytes("iso-8859-1"), "UTF-8");
                                }
                                if ("price".equalsIgnoreCase(item.getFieldName())) {
                                    price = Float.parseFloat(item.getString());
                                }
                                if ("egge".equals(item.getFieldName())) {
                                    egg = (String) item.getString();
                                }
                                if ("event".equalsIgnoreCase(item.getFieldName())) {
                                    event = item.getString();
                                }
                                if ("status".equalsIgnoreCase(item.getFieldName())) {
                                    stt = item.getString();
                                }
                            }
                        }
                        //File uploaded successfully
                        request.setAttribute("message", "File Uploaded Successfully");
                        Cake ca = new Cake(itemCode, name, price, egg, img, event, stt);
                        DataProcess dt = new DataProcess();
                        if (dt.updateProductNoImg(ca)) {
                            response.sendRedirect("/CakeOnline/Admin/Product.jsp");
                        } else {
                            response.sendRedirect("/CakeOnline/Admin/Update.jsp");
                        }
                    } catch (FileUploadException ex1) {
                        Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex1);
                    }
                }

            } else {
                request.setAttribute("message",
                        "Sorry this Servlet only handles file upload request");
                response.sendRedirect("/CakeOnline/Admin/Product.jsp");
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
