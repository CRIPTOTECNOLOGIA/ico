<%-- 
    /**
    * @authors 
    * David Casadiegos - david.2818@outlook.com / Backend
    * Luis Gelvis - luisgelvis123@gmail.com / Frontend
    */
--%>

<%@page import="Conexiones.conexionSQL"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Compra Golden Hash</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags
        BEGIN SEO-->
        <meta name="description" content="Es una moneda que te da acceso a una red de almacenamiento encriptada, te ofrece la oportunidad de adquirir espacio exclusivo en nuestros pool de servidores, en donde su información se encuentra respaldada por la tecnología blockchain, lo cual le permitirá tener la seguridad que realmente necesita.">
        <meta name="keywords" content="">

        <meta name="format-detection" content="telephone=no">
        <meta property="og:url" content="https://www.icogoldenhash.com"> 
        <link rel="shortcut icon" type="image/png" href="img/img-logo/GH_04.png" />

        <meta name="format-detection" content="telephone=no">
        <meta property="og:url" content="https://www.icogoldenhash.com"> 
        <meta property="og:type" content="website"> 
        <meta property="og:title" content="Golden Hash - Criptomoneda"> 
        <meta property="og:description" content="¿Qué esperas para comprar Golden Hash?. ¡Aprovecha ésta oportunidad, estamos de descuentos!"> 
        <meta property="og:image" content="https://www.icogoldenhash.com/img/GoldenFondo.jpg"/>
        <!-- End SEO-->


        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet"> 

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

        <!-- Owl Carousel -->
        <link type="text/css" rel="stylesheet" href="css/owl.carousel.css" />
        <link type="text/css" rel="stylesheet" href="css/owl.theme.default.css" />

        <!-- Magnific Popup -->
        <link type="text/css" rel="stylesheet" href="css/magnific-popup.css" />

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css" />
        <link href="css/compra.css" rel="stylesheet" type="text/css"/>
        <link href="css/contador/style.css" rel="stylesheet" type="text/css"/>

        <script src="js/jquery-2.1.4.min.js" type="text/javascript"></script>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
                <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
                <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Librerias contador -->
        <link rel="stylesheet" href="css/flipclock.css">

        <!-- Línea de tiempo-->
        <link href="css/timeline.css" rel="stylesheet" type="text/css"/>

        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-119919075-1"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-119919075-1');
        </script>
    </head>
    <%
        String codigo_usuario_referente = "";
        if (request.getParameter("codigo") != "" && request.getParameter("codigo") != null) {
            codigo_usuario_referente = request.getParameter("codigo");
        }

        if (request.getParameter("error") != "" && request.getParameter("error") != null) {
            out.print("<script>alert('Ocurrió un error al realizar el registro, vuelva a intentarlo, si el problema persiste, contacte al correo ventas@goldenhash.org');</script>");
        }

        if (request.getParameter("finalizado") != "" && request.getParameter("finalizado") != null) {
            out.print("<script>alert('Registro completado exitosamente, se te enviará un correo electrónico para confirmar los detalles de tu pago. Información al correo electrónico ventas@goldenhash.org');</script>");
        }

        /*PreparedStatement pst = null;
        ResultSet rs = null;
        conexionSQL con = new conexionSQL();
        String consultaSQL = "select * from informacion";
        pst = con.getConnection().prepareStatement(consultaSQL);
        rs = pst.executeQuery();
        int i = 0;
        while (rs.next()) {
            out.print("<input type='hidden' id='valor_btc_bd' value='" + rs.getString("precio_btc") + "'/>");
            out.print("<input type='hidden' id='valor_eth_bd' value='" + rs.getString("precio_eth") + "'/>");
        }*/

    %>

    <body>
        <input type='hidden' id='valor_btc_bd' value=''/>
        <input type='hidden' id='valor_eth_bd' value=''/>
        <script  type="text/javascript">
            fetch("https://api.coinmarketcap.com/v2/ticker/?limit=2")
                    .then(res => res.json())
                    .then(data => {
                        document.getElementById("valor_btc_bd").value = data.data[1].quotes.USD.price;
                        document.getElementById("valor_eth_bd").value = data.data[1027].quotes.USD.price;
                    });

        </script>
        <!-- Header -->
        <header id="home_compra">
            <!-- Background Image -->
            <!-- /Background Image -->

            <!-- Nav -->
            <nav id="nav" class="navbar nav-transparent">
                <div class="container">

                    <div class="navbar-header">
                        <!-- Logo -->
                        <div class="navbar-brand">
                            <a href="index.jsp">                                
                                <img class="logo-compra" src="img/img-logo/Logo Golden Hash Metal Azul.png" alt="logo">
                            </a>
                        </div>
                        <!-- /Logo -->

                        <!-- Collapse nav button -->
                        <div class="nav-collapse" >
                            <span></span>
                        </div>
                        <!-- /Collapse nav button -->
                    </div>

                    <!--  Main navigation  -->
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li><a href="index.jsp#home">Inico</a></li>
                        <li><a href="index.jsp#about">¿Que es?</a></li>
                        <li><a href="index.jsp#portafolio">Características</a></li>
                        <li class="has-dropdown">
                            <a href="index.jsp#service" >Golden Space</a>
                            <ul class="dropdown">
                                <li><a href="index.jsp#features">¿Que Es?</a></li>
                            </ul>
                        </li>
                        <li class="has-dropdown"><a href="index.jsp#pricing">Tokens</a>
                            <ul class="dropdown">
                                <li><a href="index.jsp#pricing">Uso</a></li>
                                <li><a href="index.jsp#distribucion_tokens">Distribucion</a></li>
                            </ul>
                        </li>                        
                        <li><a href="index.jsp#timeline">Linea de Tiempo</a></li>
                        <li><a href="index.jsp#team">Equipo</a></li>
                        <li><a href="index.jsp#contact">Contacto</a></li>
                    </ul>
                    <!-- /Main navigation -->
                </div>
            </nav>
            <!-- /Nav -->
        </header>
        <input type="hidden" id="codigo_referente" value="<%=codigo_usuario_referente%>">
        <!-- Contact -->
        <div id="contact" class="section sm-padding" style="background-color: #FAFAFA;">
            <!-- Container -->
            <div class="container">
                <!-- Row -->
                <div class="row">
                    <!-- Section-header -->
                    <div class="section-header text-center">
                        <h2 class="title">Compra de Tokens</h2>
                    </div>
                    <!-- /Section-header --> 

                    <div class="col-sm-12 col-md-6">
                        <p style="color: #000;">1. Seleccione el método de pago.</p>                           
                        <!-- Metodo de pago -->

                        <div class="row" style="margin-top: 1em; margin-bottom: 1em;">
                            <div class="col-sm-6" onclick="checkDiv('#btc', '#eth')">
                                <div class="checkbox div_pago">
                                    <label class="label_compra" style="cursor:pointer; padding: 10px;">
                                        <input type="checkbox" class="checkbox-input" id="btc" name="btc" onclick="check('#btc', '#eth')" checked style="margin-top: 12px;">
                                        <img src="img/Iconos/bitcoin_icon.png" class="img-responsive img-compra" style="cursor:pointer;" width="40" height="40">
                                        <a class="a"> Bitcoin</a>
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-6" onclick="checkDiv('#eth', '#btc')">
                                <div class="checkbox div_pago">
                                    <label class="label_compra" style="cursor:pointer; padding: 10px;">
                                        <input type="checkbox"  id="eth" name="eth" onclick="check('#eth', '#btc')" style="margin-top: 12px;">
                                        <img src="img/Iconos/ethereum_icon.svg" class="img-responsive img-compra" style="cursor:pointer;" width="26" height="26">
                                        <a class="a" > Ethereum</a>
                                    </label>
                                </div>
                            </div>
                        </div>                        
                        <p style="color: #000;">2. Digite cuantos tokens desea comprar.</p>
                        <div class="container-calculadora">
                            <div class="row">
                                <div class="col-12">
                                    <p style="text-align: center; color: #000;">Calculadora</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 col-md-5" style="text-align: center;">
                                    <div class="form-group">
                                        <label style="color: #000;">Cantidad a Enviar</label>
                                        <input type="text" class="form-control" id="cantidad_btc" name="cantidad_btc" placeholder="BTC" onchange="verificar_seleccionado(this.value);" onkeyup="verificar_seleccionado(this.value);">

                                    </div>
                                </div>

                                <div class="col-sm-12 col-md-2" style="text-align: center; margin-top: 1em;">
                                    <img src="img/intercambio-1.png">
                                </div>
                                <div class="col-sm-12 col-md-5" style="text-align: center;">
                                    <div class="form-group">
                                        <label style="color: #000">Cantidad a Recibir</label>
                                        <input type="text" class="form-control" disabled id="cantidad_xgh" name="cantidad_xgh" placeholder="XGH" id="xgh" onkeyup="">
                                    </div>
                                </div>
                            </div>
                            <div class="alert alert-danger fade" id="mensaje_alerta">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <strong>Advertencia!</strong> Contribucion minima en BTC es 0.01 y ETH de 0.125.
                            </div>
                            <p id="h2_contribucion" style="color: #000;">Contribución mínima de 0.01 BTC</p>
                            <button type="button" id="btn_comprar" class="btn btn-comprar-formulario" onclick="datos_formulario()" >Comprar</button>
                        </div>
                    </div>
                    <!-- Div Imagen -->
                    <div class="col-sm-12 col-md-6 video-cont">
                        <p style="color: #000;">
                            Descarga Trust Wallet para recepcionar tus Golden Hash (XGH)
                        </p>

                        <!-- Video Youtube TrustWallet -->
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" style="padding-top: 1em; margin: auto;" src="https://www.youtube.com/embed/fzqkm07gMYA" allowfullscreen></iframe>
                        </div>  

                        <!-- Instalar aplicacion trustwallet -->
                        <div class="row">
                            <div class="col-sm-12 col-md-6" style="text-align: center;">                                
                                <img src="img/android-app-store-latest.png" onclick="location.href = 'https://play.google.com/store/apps/details?id=com.wallet.crypto.trustapp'" style="margin-top: 2em; height: 76.19px; width: 253.717px; cursor: pointer;" class="img-responsive">                                
                            </div>
                            <div class="col-sm-12 col-md-6" style="text-align: center;">
                                <img src="img/download_app_store.svg" onclick="location.href = 'https://itunes.apple.com/us/app/trust-ethereum-wallet/id1288339409?mt=8'" style="margin-top: 2em; height: 76.19px; width: 253.717px; cursor: pointer;" class="img-responsive">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Row -->

            </div>
            <!-- /Container -->

        </div>
        <!-- /Contact -->
        <!-- Footer -->
        <footer id="footer" class="sm-padding bg-dark">
            <!-- Container -->
            <div class="container">
                <!-- Row -->
                <div class="row">
                    <div class="col-md-4">
                        <!-- footer logo -->
                        <div class="footer-logo">
                            <a href="index.html"><img src="img/img-logo/Logo Golden Hash Metal Azul.png" alt="logo"></a>
                        </div>
                        <!-- /footer logo -->
                    </div>
                    <div class="col-md-4">
                        <!-- footer follow -->
                        <ul class="footer-follow">
                            <li><a class="facebook" href="https://www.facebook.com/GoldenHash-2104300649854518/?ref=bookmarks" target="_blank"><i class="fa fa-facebook">  Facebook</i></a></li>
                            <li><a class="twitter" href="https://twitter.com/?logged_out=1&lang=es" target="_blank"><i class="fa fa-twitter">  Twitter</i></a></li>  
                            <li><a class="blogger" href="https://infogoldenhash.blogspot.com/" target="_blank"><i class="fa fa-google-plus" > Blogger</i></a></li>
                        </ul>
                        <!-- /footer follow -->
                    </div>
                    <div class="col-md-4">
                        <!-- footer copyright -->
                        <div class="footer-copyright">
                            <p>Copyright © 2017. Derechos Reservados</p>
                        </div>
                        <!-- /footer copyright -->

                    </div>

                </div>
                <!-- /Row -->

            </div>
            <!-- /Container -->

        </footer>
        <!-- /Footer -->

        <!-- Modal de registro usuario -->

        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Datos del comprador</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Formulario que registra los datos del usuario para luego abrir la interfaz para realizar la transacción-->
                    <form id="form1" >
                        <!-- Modal body -->
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="usr">Documento de Identidad:</label>
                                <input type="number" class="form-control" id="cedula" name="cedula" onKeyPress="return soloNumeros(event)">
                                <div id="mensaje1" class="errores">INGRESA TU CEDULA</div>
                            </div>
                            <div class="form-group">
                                <label for="pwd">Nombre:</label>
                                <input type="text" class="form-control" id="nombre" name="name" style="text-transform: uppercase;">
                                <div id="mensaje2" class="errores">INGRESA TU NOMBRE</div>
                            </div>
                            <div class="form-group">
                                <label for="apell">Apellido:</label>
                                <input type="text" class="form-control" id="apellido" name="apellido" style="text-transform: uppercase;">
                                <div id="mensaje3" class="errores">INGRESA TU APELLIDO</div>
                            </div>
                            <div class="form-group">
                                <label for="email">E-mail:</label>
                                <input type="email" class="form-control" id="email" name="emal" style="text-transform: uppercase;">
                                <div id="mensaje4" class="errores">INGRESA UN CORREO VALIDO</div>
                            </div>
                            <div class="form-group">
                                <label for="email">Hash de donde se va realizar el pago:</label>
                                <input type="text" class="form-control" id="llave_publica_pago" name="llave_publica_pago">
                                <div id="mensaje5" class="errores">INGRESA EL HASH DE DONDE VAS A REALIZAR EL PAGO</div>
                            </div>
                            <div class="form-group">
                                <label for="cantidad_btc">Cantidad a Enviar:</label>
                                <input type="text" class="form-control" id="formulario_cantidad_btc"  disabled name="cantidad_btc">                            
                                <div id="mensaje7" class="errores">NO MODIFIQUES ESTE CAMPO</div>
                            </div>
                            <div class="form-group">
                                <label for="cantidad_xgh">Cantidad a Recibir:</label>
                                <input type="text" class="form-control" id="formuario_cantidad_xgh" disabled name="cantidad_xgh">   
                                <div id="mensaje8" class="errores">NO MODIFIQUES ESTE CAMPO</div>
                            </div>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <input type="button" id="submit" class="btn btn_formulario-registro" id="btn_siguiente_comprar" value="Siguiente"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Modal de codigo QR-->

        <div class="modal fade" id="comprar">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 style="color: #fff;">Dirección de Pre-Venta</h4>
                    </div>
                    <form action="nuevo_archivo" method="post" id="formlario_registro_archivo" enctype="multipart/form-data">
                        <!-- Modal Body -->
                        <div class="modal-body">
                            <!--<a href="">Ver intrucciones de compra</a>-->
                            <p id="textobtc" style="color: #000;">
                                Envíe sus contribuciones BTC a la siguiente dirección o código QR.
                                NO envíe BTC de un intercambio, debe ser enviado desde 
                                su billetera.
                            </p>
                            <div class="alert alert-danger">
                                <strong>Advertencia! </strong>
                                la billetera de la cual se va realizar la transacción, debe ser la misma registrada anteriormente.<br>
                                Verifica que el monto que va transferir sean exactamente 
                            </div>
                            </p>
                            <h4 style="text-align: center;">Código QR</h4>
                            <div style="width: 100%; text-align: center;">
                                <img class="img-fluid" id="img-qr-pago" src="img/qr-bitcoin.jpg" style="width: 300px;">
                            </div>
                            <h5>Dirección de pago</h5>
                            <div class="form-group">
                                <input type="text" style="font-family: Arial; font-size: 20px" disabled class="form-control" id="hash-billetera" value="18f7DQBiQc43JxE3xFLNXuYyRcEVqJ3PCF">
                                <br>
                            </div>

                            <div class="alert alert-danger margin-top-10" >
                                <input type="hidden" value="" id="cedula_usuario_reg" name="cedula_usuario_reg">
                                <input type="hidden" name="nombreImagen" value=""/>
                                <p>Al realizar la transacción, debes subir una imagen especificando la transacción para poder validar en nuestro sistema</p>
                                <input type="file" class="form-control-file" name="file_transsaccion" onchange="cargarArchivo(this);" id="file_transsaccion">
                                <div id="mensaje8" class="errores">POR FAVOR CARGUE LA IMAGEN DE LA TRANSACCIÓN</div>
                            </div>
                            <div class="alert alert-dark" >
                                <div>
                                    <p>Envía esta url a tus amigos, si ellos realizan una compra, se te dará a ti un porcentaje de monedas por esta referencia<br></p>
                                </div>
                                <div id="url_codigo"></div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" onclick="ejecutar_formulario_compra(this);" id="finalizar_registro" class="btn btn_formulario-registro" value="Finalizar"/>
                        </div> 
                    </form>
                </div>

            </div>
        </div>


        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/registros/registro_datos_usuario.js" type="text/javascript"></script>
        <script src="js/validaciones/validacion.js" type="text/javascript"></script>
        <script src="js/precios/calculo_precios.js" type="text/javascript"></script>
        <script>
            function ejecutar_formulario_compra() {
                let input_transaccion = document.getElementById("file_transsaccion");
                
                if (input_transaccion.value != "") {
                    let extension = input_transaccion.value.split(".");
                    if (extension[extension.length - 1] == "jpg" ||
                            extension[extension.length - 1] == "jpeg" ||
                            extension[extension.length - 1] == "png") {
                        console.log(input_transaccion.files[0].size);
                        if(input_transaccion.files[0].size <= 2097152){
                            var formulario = document.getElementById("formlario_registro_archivo");
                            formulario.submit();
                        }else{
                            alert('El tamaño de la imagen debe ser menor o igual a 2Mb');
                        }
                    }else{
                        alert("Este tipo de archivo no es válido");
                    }
                }else{
                    alert('Por favor, debes cargar una imagen, la cual especifica la transacción finalizada');
                    $("#mensaje8").fadeIn("slow");
                }
            }

            function datos_formulario() {
                var cantidad_btc = document.getElementById('cantidad_btc').value;
                var cantidad_xgh = document.getElementById('cantidad_xgh').value;
                document.getElementById('formulario_cantidad_btc').value = cantidad_btc;
                document.getElementById('formuario_cantidad_xgh').value = cantidad_xgh;
                $('#myModal').modal('show');
            }

            function cargarArchivo(elemento) {
                //alert("Proceso Terminado");
                var file = elemento.files[0];
                //$("#file_transsaccion").val(file.name);
                //$('input[name="file_transsaccion"]').val(file.name);
                //document.formulario.target = "null";
                //document.formulario.action = "nuevo_archivo";
                //document.formulario.submit();
                //alert("Proceso Termionado");
            }
        </script>

    </body>

</html>