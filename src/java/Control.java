/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Augusto
 */
public class Control extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Pega a sessao
        HttpSession session = request.getSession(true);
        String code = request.getParameter("code");

        if (code != null && code.equals("sair")) {
            session.invalidate();
            response.sendRedirect("index.jsp");
            return;
        }
        boolean logado = false;
        Object tmp = session.getAttribute("logado");
        if (tmp != null && (boolean) tmp) {
            logado = true;
        }
        session.setAttribute("logado", logado);

        if (code != null && code.equals("menu")) {
            response.sendRedirect("menu.jsp");
            return;
        }
        if (code != null && code.equals("welcome")) {
            response.sendRedirect("welcome.jsp");
            return;
        }
        if (code != null && code.equals("hora")) {
            response.sendRedirect("hora.jsp");
            return;
        }
        if (code != null && code.equals("index")) {
            response.sendRedirect("index.jsp");
            return;
        }

        session.setAttribute("nome", request.getParameter("nome"));
        session.setAttribute("senha", request.getParameter("senha"));

        response.sendRedirect("Login");

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
