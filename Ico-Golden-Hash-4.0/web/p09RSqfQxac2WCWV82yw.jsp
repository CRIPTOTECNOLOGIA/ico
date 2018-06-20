<%-- 
    Document   : admin
    Created on : 24/05/2018, 03:08:13 AM
    Author     : Programacion E
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
            /*HttpSession objSession = request.getSession();
            String usuario = (String) objSession.getAttribute("usuario");
            String contrasena = (String) objSession.getAttribute("contrasena");
            objSession.setAttribute("sesion", "cerrar");

            if (usuario == null) {
                if (contrasena == null) {
                    response.sendRedirect("login.jsp");
                }
            }*/
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
        <!--<a onclick="javascript:window.printDiv('cont_imprimir');">Print </a>-->
        <script>
            function printDiv(nombreDiv) {
                var contenido = document.getElementById(nombreDiv).innerHTML;
                var contenidoOriginal = document.body.innerHTML;
                document.body.innerHTML = contenido;
                window.print();
                document.body.innerHTML = contenidoOriginal;
            }
        </script>
        <div id="cont_imprimir">
            <nav class="navbar navbar-light bg-light justify-content-between">
                <a class="navbar-brand"><p id="total_registros"></p></a>
                <form class="form-inline" action="cerrarSesion" method="post">
                    <input class="form-control mr-sm-2" type="button" value="Imprimir" onclick="javascript:window.printDiv('cont_imprimir');" aria-label="Search">
                    <button class="btn btn-primary my-2 my-sm-0" type="submit">Cerrar Sesión</button>
                </form>
            </nav>
            <section class="estilo">
                <div class="container">
                    <div class="row">
                        <style>
                            .margin_left_5{
                                margin-left: 5px;
                            }
                        </style>
                        <h2>Detalles Compra</h2>

                        <table class="table table-striped">
                            <%
                                String id_usuario = request.getParameter("id_usuario");
                                PreparedStatement pst = null;
                                ResultSet rs = null;
                                conexionSQL con = new conexionSQL();
                                String consultaSQL = "SELECT usu.*, tran_cant.cantidad_btc_transaccion_cantidad, "
                                        + "tran_cant.cantidad_xgh_transaccion_cantidad, cod_ref.id_codigo_referido "
                                        + ""
                                        + "FROM usuarios usu JOIN transacciones_cantidades tran_cant "
                                        + "JOIN codigo_referidos cod_ref "
                                        + "ON usu.id_usuario = tran_cant.id_usuario "
                                        + "AND usu.id_usuario = cod_ref.id_usuario "
                                        + "where usu.id_usuario = " + id_usuario;
                                pst = con.getConnection().prepareStatement(consultaSQL);
                                rs = pst.executeQuery();
                                int i = 0;
                                while (rs.next()) {%>
                            <tr>
                                <th>ID</th>
                                <th><%out.print(rs.getString("id_usuario"));%></th>
                            </tr>
                            <tr>
                                <th>Cédula</th>
                                <th><%out.print(rs.getString("cedula_usuario"));%></th>
                            </tr>
                            <tr>
                                <th>Nombre</th>
                                <th><%out.print(rs.getString("nombre_usuario"));%></th>
                            </tr>
                            <tr>
                                <th>Apellido</th>
                                <th><%out.print(rs.getString("apellido_usuario"));%></th>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <th><%out.print(rs.getString("email_usuario"));%></th>
                            </tr>
                            <tr>
                                <th>Llave pública de donde se realizó el pago</th>
                                <th><%out.print(rs.getString("llave_publica_pago"));%>
                                    <a target="_blank" class="btn btn-info margin_left_5" value="BTC" href = 'https://blockchain.info/address/<%out.print(rs.getString("llave_publica_pago"));%>'>BTC</a>
                                    <a target="_blank" class="btn btn-success margin_left_5" value="ETH" href = 'https://etherscan.io/address/<%out.print(rs.getString("llave_publica_pago"));%>'>ETH</a>
                                </th>
                            </tr>
                            <!--
                            <tr>
                                <th>Llave pública a donde se va realizar el envío</th>
                                <th><%out.print(rs.getString("llave_publica_envio"));%></th>
                            </tr>-->
                            <tr>
                                <th>Fecha - Hora Registro</th>
                                <th><%out.print(rs.getString("fecha_hora_usuario"));%></th>
                            </tr>
                            <tr>
                                <th>Cantidad Criptomoneda</th>
                                <th><%out.print(rs.getString("cantidad_btc_transaccion_cantidad"));%></th>
                            </tr>
                            <tr>
                                <th>Cantidad Golden Hash</th>
                                <th><%out.print(rs.getString("cantidad_xgh_transaccion_cantidad"));%></th>
                            </tr>
                            <tr>
                                <th>URL Referido</th>
                                <th><a href="https://icogoldenhash.com/compra.jsp?codigo=<%out.print(rs.getString("id_codigo_referido"));%>">https://icogoldenhash.com/compra.jsp?codigo=<%out.print(rs.getString("id_codigo_referido"));%></a></th>
                            <br/><br/>
                            </tr>

                            <%
                                }

                                String consultaSQL2 = "SELECT img_tran.nombre_imagen_transferencia "
                                        + "FROM usuarios usu JOIN imagenes_transferencias img_tran "
                                        + "ON usu.id_usuario = img_tran.id_usuario_usuarios "
                                        + "where usu.id_usuario = " + id_usuario;
                                pst = con.getConnection().prepareStatement(consultaSQL2);
                                rs = pst.executeQuery();
                                i = 0;
                                while (rs.next()) {%>
                            %>
                            <tr style="text-align: center; margin-top: 1em;">
                                <td colspan="2" style="text-align: center;">
                                    <img src="<%out.print(rs.getString("nombre_imagen_transferencia"));%>" class="img-fluid" width="auto" height="auto">
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </table>
                    </div>
                </div>
            </section>
            <%
                String consultaSQL4 = " select usu.* from usuarios usu join referidos ref "
                        + "on usu.id_usuario = ref.id_usuario_referente where id_usuario_referido = " + id_usuario;
                pst = con.getConnection().prepareStatement(consultaSQL4);
                rs = pst.executeQuery();
                i = 0;
                while (rs.next()) {%>
            <section class="estilo">
                <div class="container">
                    <div class="row">
                        <style>
                            .margin_left_5{
                                margin-left: 5px;
                            }
                        </style>
                        <h2>Compra Referida Por Este Usuario</h2>

                        <table class="table table-striped">

                            <tr>
                                <th>ID</th>
                                <th><%out.print(rs.getString("id_usuario"));%></th>
                            </tr>
                            <tr>
                                <th>Cédula</th>
                                <th><%out.print(rs.getString("cedula_usuario"));%></th>
                            </tr>
                            <tr>
                                <th>Nombre</th>
                                <th><%out.print(rs.getString("nombre_usuario"));%></th>
                            </tr>
                            <tr>
                                <th>Apellido</th>
                                <th><%out.print(rs.getString("apellido_usuario"));%></th>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <th><%out.print(rs.getString("email_usuario"));%></th>
                            </tr>
                        </table>
                    </div>
                </div>
            </section>
            <%
                }
            %>

        </div>
        <script>
            function redireccionar(codigo) {
                location.href = "consulta.jsp?id_usuario=" + codigo;
            }
        </script>
    </body>
</html>
