package Servlets;

import Conexiones.codigo_referido;
import Conexiones.transacciones_cantidades;
import Conexiones.usuario;
import Model.constantes;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

/**
 * @authors David Casadiegos - david.2818@outlook.com / Backend Luis Gelvis -
 * luisgelvis123@gmail.com / Frontend
 */
public class registrar_archivo extends HttpServlet {

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
    //Metodo para guardar la imagen del pago
    private Boolean imagenGuardada(File file) {
        return true;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String cedula = constantes.cedula_usuario_registrada;
        String nombre_imagen = request.getParameter("nombreImagen");

        usuario usu = new usuario();
        String id_usuario = usu.consulta_id(cedula).getId_usuario();

        //File destino = new File("/var/lib/tomcat/webapps/icogoldenhash/imagenes_goldenhash_transacciones/");
        File destino = new File("C:/uploads/");
        ServletRequestContext src = new ServletRequestContext(request);

        if (ServletFileUpload.isMultipartContent(src)) {
            DiskFileItemFactory factory = new DiskFileItemFactory((1024 * 1024), destino);
            ServletFileUpload upload = new ServletFileUpload(factory);

            java.util.List lista = null;
            try {
                lista = upload.parseRequest(src);
            } catch (FileUploadException ex) {
                Logger.getLogger(registrar_archivo.class.getName()).log(Level.SEVERE, null, ex);
            }
            File file = null;
            java.util.Iterator it = lista.iterator();

            while (it.hasNext()) {
                FileItem item = (FileItem) it.next();
                if (item.isFormField()) {
                    out.println(item.getFieldName() + "<br>");
                } else {
                    file = new File(item.getName());
                    nombre_imagen = item.getName();
                    
                    
                    
                    
                    
                    
                    

                    String[] extension = nombre_imagen.split("\\.");
                    System.out.println("extension: "+extension.length);
                    SimpleDateFormat d = new SimpleDateFormat("dd-MM-yyyy-");
                    SimpleDateFormat h = new SimpleDateFormat("HH-mm-ss");
                    Date date = new Date();
                    String nombre_imagen_asignado = cedula+"-"+d.format(date)+h.format(date)+"."+extension[extension.length-1];
                                     
                    
                    
                    

                    System.out.println("nombre_imagen::: " + nombre_imagen);
                    try {
                        System.out.println("FILE_IMAGEN:: " + file.getName());
                        //item.setFieldName();
                        item.write(new File(destino, nombre_imagen_asignado));
                    } catch (Exception ex) {
                        Logger.getLogger(registrar_archivo.class.getName()).log(Level.SEVERE, null, ex);
                    }

                    if (id_usuario != null) {
                        codigo_referido cod_ref = new codigo_referido();
                        String codigo_referido = cod_ref.consulta_codigo_referido_usuario(id_usuario);
                        if (codigo_referido != "" && codigo_referido != null) {

                            //nombre_imagen = cedula + codigo_referido+new MimetypesFileTypeMap().getContentType(nombre_imagen);
                            transacciones_cantidades co = new transacciones_cantidades();

                            if (co.registrar_baucher_usuario(id_usuario, "https://www.icogoldenhash.com/imagenes_goldenhash_transacciones/" + nombre_imagen_asignado)) {
                                response.sendRedirect("compra.jsp?finalizado=0");
                            } else {
                                response.sendRedirect("compra.jsp?error=0");
                            }
                        }
                    }

                } // end if
            } // end while
        } // end if
        out.println(true);
        /*}else{
            response.sendRedirect("error.jsp");
        }*/
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
