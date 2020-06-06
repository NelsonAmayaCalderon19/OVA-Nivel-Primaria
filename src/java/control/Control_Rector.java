/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Rector;
import modelDAO.*;
import modelo.Colegio;
import modelo.Docente;

/**
 *
 * @author NELSON
 */
public class Control_Rector extends HttpServlet {
Rector us = new Rector();
    RectorDAO usdao = new RectorDAO();
    Colegio colegio = new Colegio();
    ColegioDao coldao = new ColegioDao();
    Docente doc = new Docente();
    DocenteDAO docdao = new DocenteDAO();
    
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

            String user = request.getParameter("txtuser");
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
RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
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
}else if(accion.equalsIgnoreCase("Registrar")){
    String nombre = request.getParameter("txtnombre");
        String cedula = request.getParameter("txtcedula");
        String codigo = request.getParameter("txtcodigo");
        String email = request.getParameter("txtemail");
        String pass = request.getParameter("txtpassword");
        doc.setNombre(nombre);
        doc.setCedula(cedula);
        doc.setCodigo(codigo);
        doc.setEmail(email);
        doc.setPassword(pass);
        doc.setColegio(Integer.parseInt(request.getSession().getAttribute("resultado").toString()));
                    docdao.agregar(doc);
                    colegio = coldao.buscar(String.valueOf(us.getColegio()));
                    request.setAttribute("colegio", colegio);
                    request.getSession().setAttribute("resultado",us.getColegio());
                    out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
            out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
            out.println("<script>");
            out.println("$(document).ready(function(){");
            out.println("swal ('Proceso Exitoso!','Docente Registrado','success' );");
            out.println("});");
            out.println("</script>"); 
            RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
rd.include(request, response);
            }else if(accion.equalsIgnoreCase("Cerrar Sesión")){
                HttpSession sesion = request.getSession();
             sesion.invalidate();

        request.getRequestDispatcher("admin_login.jsp").forward(request, response);
            }else if(accion.equalsIgnoreCase("delete")){
                    String id=request.getParameter("id");
                    docdao.delete(id);
                    colegio = coldao.buscar(String.valueOf(us.getColegio()));
                    request.setAttribute("colegio", colegio);
                    request.getSession().setAttribute("resultado",us.getColegio());
                   out.println("<script src='//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js'></script>");
                   out.println("<link rel='stylesheet' href='//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css'/>");
                   out.println("<script>");
                   out.println("alertify.success('Docente Eliminado');");
                   out.println("</script>");
                    RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
rd.include(request, response);
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
