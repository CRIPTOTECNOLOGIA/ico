package Servlets;

import Conexiones.mensaje;
import Correos.Correo_envio_html;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @authors
 * David Casadiegos - david.2818@outlook.com / Backend
 * Luis Gelvis - luisgelvis123@gmail.com / Frontend
 */

public class registrar_mensaje extends HttpServlet {

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
        response.setContentType("application/json");
        try (PrintWriter out = response.getWriter()) {
            
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
        PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        response.setContentType("application/json");
        request.setCharacterEncoding("UTF-8");
        
        String nombre = request.getParameter("contactName");
        String email = request.getParameter("contactEmail");
        String tema = request.getParameter("contactSubject");
        String mensaje = request.getParameter("contactMessage");
        //mensaje = mensaje.substring(0,500);
        
        mensaje men = new mensaje();
        if(men.registrar_mensaje(nombre, email, tema, mensaje)){
            String asunto = "Contáctanos Golden Hash "+nombre;
            try {
                Correo_envio_html.send_correo(email,nombre,asunto, tema,mensaje);
                //Correo_envio.enviarConGMail("davidcasadiegos2818@gmail.com",asunto,texto);
            } catch (Exception e) {
                System.err.println("Error servlet registrar_mensaje.java linea 81");
            }

            response.sendRedirect("index.jsp");
        }else{
            response.sendRedirect("error.jsp");
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
