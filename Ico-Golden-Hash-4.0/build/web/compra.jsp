<%-- 
    Document   : index
    Created on : 9/06/2018, 01:00:43 PM
    Author     : CRIPTOTECNOLOGIA
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="format-detection" content="telephone=no">
        <meta property="og:url" content="https://www.icogoldenhash.com"> 

        <title>Golden Hash</title>

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
    </head>

    <body>
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
                        <li><a href="#home">Inico</a></li>
                        <li><a href="#about">¿Que es?</a></li>
                        <li><a href="#portafolio">Características</a></li>
                        <li class="has-dropdown">
                            <a href="#service" >Golden Space</a>
                            <ul class="dropdown">
                                <li><a href="#features">¿Que Es?</a></li>
                            </ul>
                        </li>
                        <li class="has-dropdown"><a href="#pricing">Tokens</a>
                            <ul class="dropdown">
                                <li><a href="#pricing">Uso</a></li>
                                <li><a href="#distribucion_tokens">Distribucion</a></li>
                            </ul>
                        </li>                        
                        <li><a href="#timeline">Linea de Tiempo</a></li>
                        <li><a href="#team">Equipo</a></li>
                        <li><a href="#contact">Contacto</a></li>
                    </ul>
                    <!-- /Main navigation -->
                </div>
            </nav>
            <!-- /Nav -->
        </header>
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
                        <p>1. Seleccione el método de pago.</p>                           
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
                        <p>2. Digite cuantos tokens desea comprar.</p>
                        <div class="container-calculadora">
                            <div class="row">
                                <div class="col-12">
                                    <p style="text-align: center;">Calculadora</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 col-md-5" style="text-align: center;">
                                    <div class="form-group">
                                        <label style="color: #868F9B">Cantidad a Enviar</label>
                                        <input type="text" class="form-control" id="cantidad_btc" name="cantidad_btc" placeholder="BTC" onchange="verificar_seleccionado(this.value);" onkeyup="verificar_seleccionado(this.value);">

                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-2" style="text-align: center; margin-top: 1em;">
                                    <img src="img/intercambio-1.png">
                                </div>
                                <div class="col-sm-12 col-md-5" style="text-align: center;">
                                    <div class="form-group">
                                        <label style="color: #868F9B">Cantidad a Recibir</label>
                                        <input type="text" class="form-control" disabled id="cantidad_xgh" name="cantidad_xgh" placeholder="XGH" id="xgh" onkeyup="">
                                    </div>
                                </div>
                            </div>
                            <div class="alert alert-danger alert-dismissible fade" id="mensaje_alerta">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <strong>Advertencia!</strong> Contribucion minima en BTC es 0.01 y ETH de 0.125.
                            </div>
                            <p>3. Contribución mínima de 0.01 BTC</p>
                            <button type="button" id="btn_comprar" class="btn btn-comprar-formulario" onclick="datos_formulario()" >Comprar</button>
                        </div>
                    </div>
                    <!-- Div Imagen -->
                    <div class="col-sm-12 col-md-6 video-cont">
                        <p>
                            Descarga Trust Wallet oara recepcionar tus Golden Hash (XGH)
                        </p>
                        <!-- Div Imagen -->
                        <!--<div class="col-sm-12 col-md-6" style="margin: 0 auto;">
                            <img src="img/intercambio.png" class="img-fluid">
                        </div>-->
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" style="padding-top: 1em; margin: auto;" src="https://www.youtube.com/embed/E4MERgi7XOI" allowfullscreen></iframe>
                        </div>  
                        <div class="row">
                            <div class="col-sm-12 col-md-6" style="text-align: center;">                                
                                <img src="img/android-app-store-latest.png" onclick="location.href = 'https://play.google.com/store/apps/details?id=com.wallet.crypto.trustapp'" style="margin-top: 2em; height: 76.19px; width: 253.717px; cursor: pointer;" class="img-fluid">                                
                            </div>
                            <div class="col-sm-12 col-md-6" style="text-align: center;">
                                <img src="img/download_app_store.svg" onclick="location.href = 'https://itunes.apple.com/us/app/trust-ethereum-wallet/id1288339409?mt=8'" style="margin-top: 2em; height: 76.19px; width: 253.717px; cursor: pointer;" class="img-fluid">
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
    </body>

</html>