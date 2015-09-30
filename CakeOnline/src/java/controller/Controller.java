/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
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
    private final String UPLOAD_DIRECTORY = "../web/imgProduct";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String ac = request.getParameter("ac");
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
                            if ("name".equals(item.getFieldName())) {
                                nameP = (String) item.getString();
                                nameP = new String(nameP.getBytes("iso-8859-1"), "UTF-8");
                                System.out.println("Name is:" + nameP);
                            }
                            if ("price".equalsIgnoreCase(item.getFieldName())) {
                                price = Float.parseFloat(item.getString());
                                System.out.println("Price is:" + price);
                            }
                            if ("kind".equals(item.getFieldName())) {
                                kind = (String) item.getString();
                                kind = new String(kind.getBytes("iso-8859-1"), "UTF-8");
                                System.out.println("kind is:" + kind);
                            }
                            if ("quantity".equalsIgnoreCase(item.getFieldName())) {
                                quantity = Integer.parseInt(item.getString());
                                System.out.println("Quantity is:" + quantity);
                            }
                            if ("descrip".equalsIgnoreCase(item.getFieldName())) {
                                desc = item.getString();
                                System.out.println("Decs is:" + quantity);

                            }
                        }
                    }

                    //File uploaded successfully
                    request.setAttribute("message", "File Uploaded Successfully");

                    Product b = new Product(1, kind, nameP, price, desc, quantity, "../images/" + nameImg);
                    DataProcess dt = new DataProcess();
                    if (dt.addProduct(b)) {
                        response.sendRedirect("/ProductAssignment/Admin/View.jsp");
                    } else {
                        response.sendRedirect("/ProductAssignment/Admin/AddProduct.jsp");
                    }

                } catch (Exception ex) {
                    request.setAttribute("message", "File Upload Failed due to " + ex);
                }

            } else {
                request.setAttribute("message",
                        "Sorry this Servlet only handles file upload request");
                response.sendRedirect("/ProductAssignment/Admin/AddProduct.jsp");
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
