<%-- 
    /**
    * @authors 
    * David Casadiegos - david.2818@outlook.com / Backend
    * Luis Gelvis - luisgelvis123@gmail.com / Frontend
    */
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="Conexiones.conexionSQL"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
           /* HttpSession objSession = request.getSession();
            String usuario = (String) objSession.getAttribute("usuario");
            String contrasena = (String) objSession.getAttribute("contrasena");
            objSession.setAttribute("sesion", "cerrar");

            if (usuario == null) {
                if (contrasena == null) {
                    response.sendRedirect("login.jsp");
                }
            */
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <link href="css/admin.css" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" type="image/png" href="img/img-logo/GH_04.png" />
        <title>JSP Page</title>
    </head>
    <body>
        
            <nav class="navbar navbar-light bg-light justify-content-between">
                <a class="navbar-brand"><p id="total_registros"></p></a>
                <form class="form-inline" action="cerrarSesion" method="post">
                    <input class="form-control mr-sm-2" type="hidden" placeholder="" aria-label="Search">
                    <button class="btn btn-primary my-2 my-sm-0" type="submit">Cerrar Sesión</button>
                </form>
            </nav>
            
            <!--<nav class="navbar navbar-expand-lg navbar-light bg-light">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                    <form class="form-inline my-2 my-lg-0">
                        <input type="button" id="forma1" name="CerrarSesion" class="btn btn-primary"  onclick="location.href='../cerrarSesion'" value="Cerrar Sesion"/> 
                    </form>
                    <h5 style="float: right;">Total Registros: 10</h5>
                </div>
            </nav>-->
            <section class="estilo">
                <div class="container">
                    <div class="row">
                        <h2>Administrador</h2>

                        <p>Información de clientes (transacciones):</p>            
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                    <th>Cédula</th>
                                    <th>Hash Pago</th>
                                    <th>Fecha - Hora</th>
                                    <th>Consultar</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    PreparedStatement pst = null;
                                    ResultSet rs = null;
                                    conexionSQL con = new conexionSQL();
                                    String consultaSQL = "select * from usuarios ORDER by id_usuario DESC ";
                                    pst = con.getConnection().prepareStatement(consultaSQL);
                                    rs = pst.executeQuery();
                                    int cantidad_registros = 0;
                                    while (rs.next()) {
                                        cantidad_registros++;
                                        out.print("<tr>");
                                        out.print("<td>" + rs.getString("id_usuario") + "</td>");
                                        out.print("<td>" + rs.getString("nombre_usuario") + " " + rs.getString("apellido_usuario") + "</td>");
                                        out.print("<td>" + rs.getString("cedula_usuario") + "</td>");
                                        out.print("<td>" + rs.getString("llave_publica_pago") + "</td>");
                                        out.print("<td>" + rs.getString("fecha_hora_usuario") + "</td>");
                                        out.print("<td><input type='button' class='btn btn-primary' value='Ver' onclick='redireccionar(" + rs.getString("id_usuario") + ")'/></td>");
                                        out.print("</tr>");
                                    }
                                %>
                            <script>
                                document.getElementById("total_registros").innerHTML = "Total Registros: <%=cantidad_registros%>";
                            </script>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>
        <script>
            setTimeout("location.reload()", 10000);
            function redireccionar(codigo) {
                location.href = "p09RSqfQxac2WCWV82yw.jsp?id_usuario=" + codigo;
            }
        </script>
    </body>
</html>
