/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelDAO.ColegioDao;
import modelDAO.DocenteDAO;
import modelDAO.RectorDAO;
import modelo.Colegio;
import modelo.Docente;
import modelo.Rector;

/**
 *
 * @author NELSON
 */
public class Control_Docente extends HttpServlet {
Docente us = new Docente();
    DocenteDAO usdao = new DocenteDAO();
    Colegio colegio = new Colegio();
    ColegioDao coldao = new ColegioDao();

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
        request.setCharacterEncoding("UTF-8");
         PrintWriter out;
         out = response.getWriter();
        String accion = request.getParameter("accion");
        try{
if(accion.equalsIgnoreCase("Ingresar")){

            String user = request.getParameter("txtcedula");
        String pass = request.getParameter("txtpass");
        us=usdao.validar(user, pass);
            if(us.getColegio() != null){      
                colegio = coldao.buscar(String.valueOf(us.getColegio()));
                    request.setAttribute("colegio", colegio);
            out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
            out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
            out.println("<script>");
            out.println("$(document).ready(function(){");
            out.println("swal ('Login Exitoso!','Acceso Concedido','success' );");
            out.println("});");
            out.println("</script>");    
             request.getSession().setAttribute("resultado",us.getColegio());
           HttpSession sesion = request.getSession();
             sesion.setAttribute("user", us);
RequestDispatcher rd = request.getRequestDispatcher("admin_docente.jsp");
rd.include(request, response);
           
        }else{
            out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
            out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
            out.println("<script>");
            out.println("$(document).ready(function(){");
            out.println("swal ('Usuario no Encontrado!','Intente Nuevamente!','error' )");
            out.println("});");
            out.println("</script>");
             HttpSession sesion = request.getSession();
             sesion.invalidate();
            RequestDispatcher rd = request.getRequestDispatcher("admin_login.jsp");
rd.include(request, response);

        }
}
else if(accion.equalsIgnoreCase("Cerrar Sesión")){
                HttpSession sesion = request.getSession();
             sesion.invalidate();

        request.getRequestDispatcher("admin_login.jsp").forward(request, response);
            }
            else{
    HttpSession sesion = request.getSession();
             sesion.invalidate();

            RequestDispatcher rd = request.getRequestDispatcher("admin_login.jsp");
rd.include(request, response);
}
            
    
        
    
    }catch(Exception e){
    RequestDispatcher rd = request.getRequestDispatcher("admin_login.jsp");
rd.include(request, response);
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
