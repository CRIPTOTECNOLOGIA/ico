/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Conexiones.codigo_referido;
import Conexiones.referidos;
import Conexiones.transacciones_cantidades;
import Conexiones.usuario;
import Model.constantes;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author CRIPTOTECNOLOGIA
 */
public class registrar_usuario extends HttpServlet {

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String cedula = request.getParameter("cedula");
        constantes.cedula_usuario_registrada = cedula;
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String hash_pago = request.getParameter("llave_publica_pago");
        String cantidad_btc = request.getParameter("cantidad_btc");
        String cantidad_xgh = request.getParameter("cantidad_xgh");
        String codigo_referente = request.getParameter("codigo_referente");
        String id_usuario = null;

        usuario usu = new usuario();
        codigo_referido cod_ref = new codigo_referido();
        referidos ref = new referidos();
        transacciones_cantidades tran_cant = new transacciones_cantidades();

        if (usu.registrar_usuario(cedula, nombre, apellido, email, hash_pago, "")) {
            id_usuario = usu.consulta_id(cedula).getId_usuario();
            if (id_usuario != null) {
                if (cod_ref.registrar_codigo_referido(id_usuario)) {
                    if (tran_cant.registrar_transaccion_cantidad(cantidad_btc, cantidad_xgh, id_usuario)) {
                        if (codigo_referente != null && codigo_referente != "") {
                            String id_usuario_referente = ref.consulta_id_referente(codigo_referente).getId_usuario_referente();
                            if (id_usuario_referente != null && id_usuario_referente != "") {
                                ref.registrar_referidos(id_usuario_referente, id_usuario);
                            }
                        }
                        out.print(cod_ref.consulta_codigo_referido_usuario(id_usuario));
                    }
                }
            }
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
