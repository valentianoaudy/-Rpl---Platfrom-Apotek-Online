/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import koneksi.DB;

/**
 *
 * @author asus
 */
@MultipartConfig(maxFileSize = 16177216)//1.5mb
@WebServlet(name = "inputobat", urlPatterns = {"/inputobat"})
public class inputobat extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet inputobat</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet inputobat at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        Connection con = null;
        PreparedStatement ps = null;
        
        String kode = request.getParameter("kode");
        String nama = request.getParameter("nama");
        String ket = request.getParameter("ket");
        String harga = request.getParameter("harga");
        String qty = request.getParameter("qty");
        Part part = request.getPart("foto");

        try {
            con = DB.getConnection();
            System.out.println("connection done");
            String sql = "insert into obat1 (kd_obat,nama,ket,harga,qty,foto) values(?,?,?,?,?,?)";
            ps = con.prepareStatement(sql);
            InputStream is = part.getInputStream();
            ps.setString(1, kode);
            ps.setString(2, nama);
            ps.setString(3, ket);
            ps.setString(4, harga);
            ps.setString(5, qty);
            ps.setBlob(6, is);
            int status = ps.executeUpdate();
            if (status > 0) {
                request.setAttribute("nama", nama);
                RequestDispatcher rd = request.getRequestDispatcher("./menuobat.jsp");
                rd.forward(request, response);
            } else {
                RequestDispatcher rd1 = request.getRequestDispatcher("Error.jsp");
                rd1.forward(request, response);
            }
        } catch (SQLException e) {
            out.println("Exception: " + e);
            System.out.println("Exception1: " + e);
        }

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
