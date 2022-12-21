/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Augusto
 */
public class Login extends HttpServlet {

    private String user_bd;
    private String pw_bd;

    @Override
    public void init() {
        user_bd = getServletContext().getInitParameter("user_bd");
        pw_bd = getServletContext().getInitParameter("pw_bd");
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        String nome = (String) session.getAttribute("nome");
        String senha = (String) session.getAttribute("senha");
        Boolean logado = (Boolean) session.getAttribute("logado");
        ValidaLogin valida = new ValidaLogin();
        
        if (logado == false) {
            if (nome != null) {
                // quer fazer login
                if (valida.validaLogin(nome, senha, user_bd, pw_bd)) {
                    session.setAttribute("logado", true);
                    logado = true;
                    session.setAttribute("nome", nome);
                } else {
                    session.setAttribute("msg", "Login inválido!");
                }
            } else {
                session.setAttribute("msg", "Sessão expirou!");
                // expirou a sessao
            }
        }
        if (logado) {
            request.getRequestDispatcher("Control?code=menu").forward(request, response);
        } else {
            request.getRequestDispatcher("Control?code=index").forward(request, response);
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
