<%-- 
    /**
    * @authors 
    * David Casadiegos - david.2818@outlook.com / Backend
    * Luis Gelvis - luisgelvis123@gmail.com / Frontend
    */
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Golden Hash</title>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags
        BEGIN SEO-->
        <meta name="description" content="Golden Hash. Es una moneda que te da acceso a una red de almacenamiento encriptada, te ofrece la oportunidad de adquirir espacio exclusivo en nuestros pool de servidores, en donde su información se encuentra respaldada por la tecnología blockchain, lo cual le permitirá tener la seguridad que realmente necesita.">
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
        <header id="home">
            <!-- Background Image -->
            <div class="bg-img" style="background-image: url('./img/img-home/blockchaine.png');">
                <div class="overlay"></div>
            </div>
            <!-- /Background Image -->

            <!-- Nav -->
            <nav id="nav" class="navbar nav-transparent">
                <div class="container">

                    <div class="navbar-header">
                        <!-- Logo -->
                        <div class="navbar-brand">
                            <a href="index.jsp">
                                <img class="logo" src="img/img-logo/Logo Golden Hash Metal Azul.png" alt="logo">
                                <img class="logo-alt" src="img/img-logo/Logo Golden Hash Metal Azul.png" alt="logo">
                            </a>
                        </div>
                        <!-- /Logo -->

                        <!-- Collapse nav button -->			
                        <div class="nav-collapse">
                            <span></span>
                        </div>
			<!-- /Collapse nav button -->
                    </div>

                    <!--  Main navigation  -->
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li><a href="#home">Inicio</a></li>
                        <li><a href="#about">¿Qué es?</a></li>
                        <li><a href="#portafolio">Características</a></li>
                        <li class="has-dropdown">
                            <a href="#service" >Golden Space</a>
                            <ul class="dropdown">
                                <li><a href="#features">Cómo Funciona</a></li>
                            </ul>
                        </li>
                        <li class="has-dropdown"><a href="#pricing">Tokens</a>
                            <ul class="dropdown">
                                <li><a href="#pricing">Uso</a></li>
                                <li><a href="#distribucion_tokens">Distribución</a></li>
                            </ul>
                        </li>                        
                        <li><a href="#timeline">Línea de Tiempo</a></li>
                        <li><a href="#team">Equipo</a></li>
                        <li><a href="#contact">Contacto</a></li>
                    </ul>
                    <!-- /Main navigation -->
                </div>
            </nav>
            <!-- /Nav -->

            <!-- home wrapper -->
            <div class="home-wrapper">
                <div class="container">
                    <div class="row">
                        <!-- home content -->
                        <div class="col-md-10 col-md-offset-1">
                            <div class="home-content">
                                <h1 class="white-text">Golden Hash</h1>
                                <p class="white-text">
                                    SOLUCIONES DE ALMACENAMIENTO AL ALCANCE DE TODOS.
                                </p>
                            </div>
                        </div>
                        <!-- /home content -->                        
                    </div>
                    <!-- countdown -->
                    <div class="row">
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <!-- Section header -->
                            <div class="section-header text-center" >
                                <h2 class="title" style=" color: #FFFFFF" >30% De Bonus termina en:</h2>
                            </div>
                            <!-- /Section header -->
                            <div class="agileits-timer"> 
                                <div class="clock">
                                    <div class="column days" style="display: inline-block;">
                                        <div class="timer" id="days"></div>
                                        <div class="text">Dias</div>
                                    </div>
                                    <div class="timer days" style="display: inline-block;"></div>
                                    <div class="column">
                                        <div class="timer" id="hours"></div>
                                        <div class="text">Horas</div>
                                    </div>
                                    <div class="timer"></div>
                                    <div class="column">
                                        <div class="timer" id="minutes"></div>
                                        <div class="text">Minutos</div>
                                    </div>
                                    <div class="timer"></div>
                                    <div class="column">
                                        <div class="timer" id="seconds"></div>
                                        <div class="text">Segundos</div>
                                    </div>
                                    <div class="clear"> </div>
                                </div>	 
                            </div>
                        </div>   
                        <div class="col-sm-12 col-md-6 col-lg-6 btn_libro_compra">
                            <div class="row">
                                <div class="col-sm-6 col-md-6">
                                    <a href="compra.jsp"><button class="btn btn-comprar">Comprar</button></a>
                                </div>
                                <div class="col-sm-6 col-md-6">
                                    <a href="PDF-LibroBlanclo/Libro Blanco GOLDEN HASH.pdf" target="a_blank"><button class="btn btn-libro_blanco">Libro Blanco</button></a>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /home wrapper -->

        </header>
        <!-- /Header -->

        <!-- Que es -->
        <div id="about" class="section md-padding">
            <!-- Container -->
            <div class="container">
                <!-- Row -->
                <div class="row">
                    <!-- Section header -->
                    <div class="section-header text-center">
                        <h2 class="title">Golden Hash</h2>
                    </div>
                    <!-- /Section header -->

                    <!-- Que es Golden Hash -->
                    <div class="col-sm-12 col-md-6 col-lg-6">
                        <p>
                            Es una moneda que te da acceso a una red de almacenamiento
                            encriptada, te ofrece la oportunidad de adquirir espacio
                            exclusivo en nuestros pool de servidores, en donde su
                            información se encuentra respaldada por la tecnología
                            blockchain, lo cual le permitirá tener la seguridad que
                            realmente necesita. 
                        </p>
                    </div>
                    <!-- /Que es Golden Hash -->

                    <!-- Video  -->
                    <div class="col-sm-12 col-md-6 col-lg-6 video_about">
                        <iframe width="100%" height="315" src="https://www.youtube.com/embed/S-D-uQnIGaU" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </div>
                    <!-- /And Video -->
                </div>
                <!-- /Row -->
            </div>
            <!-- /Container -->
        </div>
        <!-- /About -->

        <!-- Caracteristicas -->
        <div id="portafolio" class="section md-padding bg-grey">
            <!-- Container -->
            <div class="container">
                <!-- Row -->
                <div class="row">
                    <!-- Section header -->
                    <div class="section-header text-center">
                        <h2 class="title">Características</h2>
                    </div>
                    <!-- /Section header -->
                    <!-- Seguridad -->
                    <div class="col-md-6">
                        <div class="about">
                            <i class="fa fa-lock"></i>
                            <h3>Seguridad</h3>
                            <p>
                                Golden Hash maneja todas sus transacciones bajo
                                el protocolo SSL, con el respaldo de la tecnología
                                blockchain, para validar el espacio de almacenamiento
                                adquirido por los usuarios, evitando las vulnerabilidades.                                
                            </p>
                        </div>
                    </div>
                    <!-- /Seguridad -->

                    <!-- Rapidez en transacciones -->
                    <div class="col-md-6">
                        <div class="about">
                            <i class="fa fa-clock-o"></i>
                            <h3>Rapidez en transacciones</h3>
                            <p>
                                Las transacciones son más rápidas, debido a que se ejecutan
                                en el entorno de Ethereum, donde el tiempo requerido para que
                                un bloque se confirme, es de tan solo 16 segundos.
                                <br>   
                                <br>
                            </p>
                        </div>
                    </div>
                    <!-- /rapidez en trasancciones -->


                </div>                
                <!-- /Row -->
                <div class="row">
                    <!-- VErsatilidad -->
                    <div class="col-md-6">
                        <div class="about">
                            <i class="fa fa-gears"></i>
                            <h3>Versatilidad</h3>
                            <p>
                                Golden Hash posee un amplio rango de usos, debido
                                al desarrollo de la plataforma Golden Space, en donde
                                puede usarse para tener un espacio de almacenamiento.                                
                            </p>
                        </div>
                    </div>
                    <!-- Descentralizada -->
                    <div class="col-md-6">
                        <div class="about">
                            <i class="fa fa-group"></i>
                            <h3>Descentralizada</h3>
                            <p>
                                Golden Hash es descentralizada, debido a que permite
                                la participación de la comunidad, sin depender de un
                                ente regulatorio (intermediarios).                                
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Container -->

        </div>
        <!-- /Portfolio -->

        <!-- Golden space -->
        <div id="service" class="section md-padding" style="background-color: #12212E;">

            <!-- Container -->
            <div class="container">
                <!-- Row -->
                <div class="row">
                    <!-- Section header -->
                    <div class="section-header text-center">
                        <h2 class="title" style="color: #FAFAFA;">Golden Space</h2>
                    </div>
                    <!-- /Section header -->

                    <!-- Golden Space -->
                    <div class="col-md-6">
                        <p class="text-goldenSpace">
                            Es una plataforma multidisciplinar y de servicio
                            de almacenamiento de datos exclusivo de Golden-Hash.
                            Se desarrolla en Hyperledger, la más importante de todas
                            las tecnologías de Blockchain privadas que actualmente
                            existen en este ecosistema. Reúne un conjunto de
                            capacidades de gestión y administración con diseño muy
                            flexible de la información, que permite el despliegue de
                            Smart Contracts, llamados en este caso "Chaincodes"
                            (desarrollados en el lenguaje de programacón de Google
                            'Golang').
                        </p>
                    </div>
                    <div class="col-md-6" style="text-align: center;">
                        <img src="img/logo_golden_space_blanco.png" class="img-responsive" >
                    </div>
                </div>
                <!-- /Row -->

            </div>
            <!-- /Container -->

        </div>
        <!-- /Service -->

        <!-- Que es golden Space -->
        <div id="features" class="section md-padding bg-grey">

            <!-- Container -->
            <div class="container">

                <!-- Row -->
                <div class="row">

                    <!-- why choose us content -->
                    <div class="col-md-6">
                        <div class="section-header text-center">
                            <h2 class="title">Como Funciona</h2>
                        </div>
                        <div class="feature">
                            <i class="fa fa-check"></i>
                            <p>
                                La información almacenada es de uso exclusivo del cliente, debido a que la 
                                blockchain, por naturaleza evita su modificación, una vez que el dato haya sido guardado.
                            </p>
                        </div>
                        <div class="feature">
                            <i class="fa fa-check"></i>
                            <p>
                                El ingreso o inicio de sesión a través del móvil con un código QR o sin móvil con código 
                                PIN y contraseña.
                            </p>
                        </div>
                        <div class="feature">
                            <i class="fa fa-check"></i>
                            <p>
                                Golden Space busca que el usuario tenga una TARIFA ÚNICA DE PAGO, y que sus monedas GOLDEN HASH, 
                                sirvan para canjear espacio de almacenamiento.
                            </p>
                        </div>
                        <div class="feature">
                            <i class="fa fa-check"></i>
                            <p>
                                La interfaz de Golden Space es de diseño flexible, destaca por su facilidad de manejo 
                                y un gestor de archivos que brilla por su sencillez.
                            </p>
                        </div>
                    </div>
                    <!-- /why choose us content -->

                    <!-- About slider -->
                    <div class="col-md-6" style="margin-top: 5em;">
                        <div id="about-slider" class="owl-carousel owl-theme">
                            <img class="img-responsive" src="./img/img-goldenSpace/estapa1-criptoseguridad.jpg" alt="">
                            <img class="img-responsive" src="./img/img-goldenSpace/etapa2-inicio.jpg" alt="">
                            <img class="img-responsive" src="./img/img-goldenSpace/etapa3-funcionamiento.jpg" alt="">
                            <img class="img-responsive" src="./img/img-goldenSpace/etapa4-interfaz.jpg" alt="">
                        </div>
                    </div>
                    <!-- /About slider -->

                </div>
                <!-- /Row -->

            </div>
            <!-- /Container -->

        </div>
        <!-- /Why Choose Us -->

        <!-- Uso de tokens -->
        <div id="pricing" class="section md-padding">
            <!-- Container -->
            <div class="container">
                <!-- Row -->
                <div class="row">

                    <!-- Section header -->
                    <div class="section-header text-center">
                        <h2 class="title">Uso de Tokens</h2>
                    </div>
                    <!-- /Section header -->

                    <!-- Nav Tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="active">
                            <a class="titulos " data-toggle="tab" href="#Desarrollo_Investigación">Desarrollo e Investigación</a>
                        </li>
                        <li >
                            <a class="titulos" data-toggle="tab" href="#Marketing">Marketing</a>
                        </li>
                        <li >
                            <a class="titulos" data-toggle="tab" href="#Operaciones_Negocios">Operaciones y Negocios</a>
                        </li>
                        <li >
                            <a class="titulos" data-toggle="tab" href="#Legal_Administrativo">Legal y Administrativo</a>
                        </li>
                    </ul>
                    <!-- Tab Panes -->
                    <div class="tab-content">
                        <div id="Desarrollo_Investigación" class="container tab-pane active">
                            <br>
                            <div class="row">
                                <div class="col-sm-12 col-md-4 col-lg-4">
                                    <img src="img/img-graficas/40blue.png" class="img-responsive img-uso_tokens" alt="">
                                </div>
                                <div class="col-sm-12 col-md-8 col-lg-8">
                                    <h3 class="titulo_menu">Desarrollo e Investigación</h3>
                                    <p class="texto_menu">
                                        Se impulsará el desarrollo de la plataforma de almacenamiento GoldenSpace, incrementando su capacidad de soporte y transferencia
                                        bajo el enfoque de mejora continua, con la incorporación de nuevas alternativas para el acceso
                                        remoto e inmediato a los datos, como aplicaciones para múltiples sistemas.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div id="Marketing" class="container tab-pane fade">
                            <br>
                            <div class="row">
                                <div class="col-sm-12 col-md-4 col-lg-4">
                                    <img src="img/img-graficas/30blue.png" class="img-responsive img-uso_tokens" alt="">
                                </div>
                                <div class="col-sm-12 col-md-8 col-lg-8">
                                    <h3 class="titulo_menu">Marketing</h3>
                                    <p class="texto_menu">
                                        Se desarrollará una campaña de Marketing intensiva y ambiciosa en varios idiomas, para la fidelización de usuarios en la región,
                                        y así fomentar el nivel de conocimiento y recordación de la marca Golden Hash, como la opción líder en Soluciones de Almacenamiento
                                        para todos, con la perspectiva alineada a lograr un alcance global.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div id="Operaciones_Negocios" class="container tab-pane fade">
                            <br>
                            <div class="row">
                                <div class="col-sm-12 col-md-4 col-lg-4">
                                    <img src="img/img-graficas/20blue.png" class="img-responsive img-uso_tokens" alt="">
                                </div>
                                <div class="col-sm-12 col-md-8 col-lg-8">
                                    <h3 class="titulo_menu">Operaciones y Negocios</h3>
                                    <p class="texto_menu">
                                        Consolidar el negocio a través de asociaciones estratégicas, accionistas adicionales de integración de contenido, para valorizar en
                                        el mercado de criptomonedas, nuestra ficha XGH, en beneficio de nuestros inversionistas.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div id="Legal_Administrativo" class="container tab-pane fade">
                            <br>
                            <div class="row">
                                <div class="col-sm-12 col-md-4 col-lg-4">
                                    <img src="img/img-graficas/10blue.png" class="img-responsive img-uso_tokens" alt="">
                                </div>
                                <div class="col-sm-12 col-md-8 col-lg-8">
                                    <h3 class="titulo_menu">Legal y Administrativo</h3>
                                    <p class="texto_menu">
                                        Fondos destinados a la solvencia de gastos de administración, contabilidad, rentas, asesoría legal y otros servicios propios o de
                                        terceros requeridos para la evolución del proyecto.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Row -->
            </div>
            <!-- /Container -->
        </div>
        <!-- /Pricing -->

        <!-- Distribucion de tokens -->
        <div id="distribucion_tokens" class="section md-padding" style="background-color: #FAFAFA">
            <div class="container">
                <div class="row">
                    <!-- Section header -->
                    <div class="section-header text-center">
                        <h2 class="title">Distribución de Tokens</h2>
                    </div>
                    <!-- /Section header -->
                    <div class="row">
                        <div class="col-sm-12" style="margin-top: -90px;">
                            <div id="grafica" style="width: 100%; height: 440px;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Timeline -->
        <div id="timeline" class="section md-padding">
            <!-- Container -->
            <div class="container">
                <!-- Row -->
                <div class="row">
                    <!-- Section header -->
                    <div class="section-header text-center">
                        <h2 class="title" style="color: #FFFFFF">Línea de Tiempo</h2>
                    </div>
                    <div class="inicio">
                        <h4 style="color: inherit; margin-top: 18px; text-align: center; ">Inicío</h4>
                    </div>
                    <ul class="timeline">
                        <li class="timeline-inverted">
                            <div class="timeline-badge primary"><i class="fa fa-check-square-o"></i><!--<img src="library/open-iconic-master/svg/action-redo.svg">--></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Marzo, 2017</h4>
                                </div>
                                <div class="timeline-body">
                                    <p>Concepción de la Idea: Proyecto Golden Hash.</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline">
                            <div class="timeline-badge primary"><i class="fa fa-check-square-o"></i></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Junio, 2017</h4>
                                </div>
                                <div class="timeline-body">
                                    <p>Diseño y desarrollo de GoldenSpace (I fase) Soluciones a nivel de almacenamiento de datos.</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-badge primary"><i class="fa fa-check-square-o"></i></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Agosto, 2017</h4>
                                </div>
                                <div class="timeline-body">
                                    <p>Diseño y desarrollo de Imperium Wallet.</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline">
                            <div class="timeline-badge primary"><i class="fa fa-check-square-o"></i></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Enero, 2018</h4>
                                </div>
                                <div class="timeline-body">
                                    <p>Inversión en servidores dedicados y conformación de base de datos.</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-badge primary"><i class="fa fa-check-square-o"></i></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Mayo, 2018</h4>
                                </div>
                                <div class="timeline-body">
                                    <p>Lanzamiento de Pre-ICO e ICO (90 días).</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline">
                            <div class="timeline-badge primary"><i class="fa fa-clock-o"></i></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Septiembre, 2018</h4>
                                </div>
                                <div class="timeline-body">
                                    <p>Adjudicación del Programa de Referencias.</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-badge primary"><i class="fa fa-clock-o"></i></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Octubre, 2018</h4>
                                </div>
                                <div class="timeline-body">
                                    <p>Desarrollo de App y otras rutas de acceso para GoldenSpace (II fase).</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline">
                            <div class="timeline-badge primary"><i class="fa fa-clock-o"></i></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Noviembre, 2018</h4>
                                </div>
                                <div class="timeline-body">
                                    <p>Incorporación en las principales Exchanges.</p>
                                    <p>Markentig en redes y participación en eventos para penetración en el mercado global.</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <!-- /Section header -->
                    <div class="inicio">
                        <h4 style="color: inherit; margin-top: 18px; text-align: center; ">Fin</h4>
                    </div>
                </div>
            </div>
            <!-- /Row -->

        </div>

        <!-- Team -->
        <div id="team" class="section md-padding">
            <!-- Container -->
            <div class="container">
                <!-- Row -->
                <div class="row">
                    <!-- Section header -->
                    <div class="section-header text-center">
                        <h2 class="title">Nuestro Equipo</h2>
                    </div>
                    <!-- /Section header -->                              

                    <!-- Javier -->
                    <div class="col-sm-12" style="margin-top: 1em;">
                        <div class="team ismael">
                            <div class="team-img" style="width: 100%; height: 100%;">
                                <img class="img-responsive javier" style="border-radius: 100%;" src="./img/FOTOS EQUIPO/javier.png" alt="">
                                <div class="overlay">
                                    <div class="team-social">
                                        <p>
                                            Administrador de Negocios Internacionales, Especialista en Comercio Exterior,
                                            Marketing Digital - Experiencia de 4 años en criptomoneda.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3>Javier Lizcano</h3>
                                <span>CEO & Fundador</span>
                            </div>
                        </div>
                        <!-- /team -->
                    </div>
                </div            
                <!-- Lideres de desarrollo -->
                <div class="row" style="margin-top: 2em;">
                    <!-- Section header -->
                    <div class="section-header text-center" >
                        <h2 class="title" >Equipo de Desarrollo</h2>
                    </div>
                    <!-- /Section header -->
                    <!-- Lider ALejandro -->
                    <div class="col-sm-6" style="margin-top: 1em;">
                        <div class="team" >
                            <div class="team-img">
                                <img class="img-responsive" style="border-radius: 100%;" src="./img/FOTOS EQUIPO/alejandro.png" alt="">
                                <div class="overlay">
                                    <div class="team-social">
                                        <p>
                                            Experto en Blockchain, Gestor empresarial y director de talento humano, productor de multimedia, desarrollador de plataformas
                                            morpg y diplomado en liderazgo organizacional corporativo.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3>Alejandro Yañez</h3>
                                <span>Líder de Desarrollo de Software</span>
                            </div>
                        </div>
                    </div>
                    <!-- Lider Mauricio -->
                    <div class="col-sm-6" style="margin-top: 1em;">
                        <div class="team" >
                            <div class="team-img">
                                <img class="img-responsive" style="border-radius: 100%;" src="./img/FOTOS EQUIPO/mauricio2.png" alt="">
                                <div class="overlay">
                                    <div class="team-social">
                                        <p>
                                            Consultor Tecnologías de Información, Magister Gestión de Proyectos Informáticos, Especialista Diagnóstico y Análisis Organizacional,
                                            Programador Certificado Microsoft Nivel Avanzado Experto.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3>Mauricio Acevedo</h3>
                                <span>Líder en Desarrollo de Proyectos Informáticos</span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Equipo de desarrollo 1 -->
                <div class="row" style="margin-top: 2em;">
                    <!-- Luis Gelvis -->
                    <div class="col-sm-4" style="margin-top: 1em;">
                        <div class="team" >
                            <div class="team-img">
                                <img class="img-responsive" style="border-radius: 100%;" src="./img/FOTOS EQUIPO/luis.png" alt="">
                                <div class="overlay">
                                    <div class="team-social">
                                        <p class="p">
                                            Experto en Blockchain, Diseñador Web y desarrollador de aplicaciones, Tecnólogo en análisis
                                            y desarrollo de sistemas informáticos.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3>Luis Gelvis</h3>
                                <span>Desarrollador de Software</span>
                            </div>
                        </div>
                    </div>
                    <!-- David Casadiegos -->
                    <div class="col-sm-4" style="margin-top: 1em;">
                        <div class="team" >
                            <div class="team-img">
                                <img class="img-responsive" style="border-radius: 100%;" src="./img/FOTOS EQUIPO/david.png" alt="">
                                <div class="overlay">
                                    <div class="team-social">
                                        <p class="p">
                                            Experto en Blockchain, Diseñador Web y desarrollador de aplicaciones, Tecnólogo en análisis
                                            y desarrollo de sistemas informáticos.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3>David Casadiegos</h3>
                                <span>Desarrollador de Software</span>
                            </div>
                        </div>
                    </div>
                    <!-- Wilmar Alvarado -->
                    <div class="col-sm-4" style="margin-top: 1em;">
                        <div class="team" >
                            <div class="team-img">
                                <img class="img-responsive" style="border-radius: 100%;" src="./img/FOTOS EQUIPO/wilmar.png" alt="">
                                <div class="overlay">
                                    <div class="team-social">
                                        <p class="p">
                                            Experto en Blockchain, Diseñador Web y desarrollador de aplicaciones, Tecnólogo en análisis
                                            y desarrollo de sistemas informáticos.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3>Wilmar Alvarado</h3>
                                <span>Desarrollador de Software</span>
                            </div>
                        </div>
                    </div>
                </div>               

                <!-- Mercadeo -->
                <div class="row" style="margin-top: 2em;">
                    <div class="section-header text-center">
                        <h2 class="title">Equipo de Mercadeo</h2>
                    </div>
                    <!-- Lide de mercadeo -->
                    <div class="col-sm-12">
                        <div class="team ismael" >
                            <div class="team-img">
                                <img class="img-responsive" style="border-radius: 100%;" src="./img/FOTOS EQUIPO/ismael.png" alt="">
                                <div class="overlay">
                                    <div class="team-social">
                                        <p class="text_ismael">
                                            Ingeniero Industrial, Magister en Gerencia de Empresas Mención Mercadeo, Experto en ventas con 12 años de experiencia en marketing digital
                                            y campañas publicitarias en nuevos mercados.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3>Ismael Zambrano</h3>
                                <span>Líder de Mercadeo</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Equipo de mercadeo -->
                <div class="row" style="margin-top: 2em;">                    
                    <!-- Leidy Gomes -->
                    <div class="col-sm-4" style="margin-top: 1em;">
                        <div class="team" >
                            <div class="team-img">
                                <img class="img-responsive" style="border-radius: 100%;" src="./img/FOTOS EQUIPO/leidy.png" alt="">
                                <div class="overlay">
                                    <div class="team-social">
                                        <p class="p">
                                            Experta en Marketing Digital, Community Manager, especialista en manejo de redes sociales,
                                            investigación de mercadeo.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3>Leidy Gómez</h3>
                                <span>Marketing Digital</span>
                            </div>
                        </div>
                    </div>
                    <!-- Oriana Pinillos -->
                    <div class="col-sm-4" style="margin-top: 1em;">
                        <div class="team" >
                            <div class="team-img">
                                <img class="img-responsive" style="border-radius: 100%;" src="./img/FOTOS EQUIPO/oriana.png" alt="">
                                <div class="overlay">
                                    <div class="team-social">
                                        <p class="p">
                                            Comunicadora Social y Periodista con Énfasis en Comunicación Organizacional, formación Complementaria
                                            en Administración de PQR de Icontec Internacional. 
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3>Oriana Pinillos</h3>
                                <span>Comunicadora Social</span>
                            </div>
                        </div>
                    </div>
                    <!-- Pietro Rivellaro -->
                    <div class="col-sm-4" style="margin-top: 1em;">
                        <div class="team" >
                            <div class="team-img">
                                <img class="img-responsive" style="border-radius: 100%;" src="./img/FOTOS EQUIPO/pietro.png" alt="">
                                <div class="overlay">
                                    <div class="team-social">
                                        <p class="p">
                                            Ingeniero Petroquímico de la Universidad Rafael Urdaneta de Maracaibo, Experto en Idiomas
                                            del Centro Venezolano Americano del Zulia.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3>Pietro Crivellaro</h3>
                                <span>Ejecutivo de Marketing</span>
                            </div>
                        </div>
                    </div>
                </div> 

                <!-- Departamento administrativo -->

                <div class="row" style="margin-top: 2em;">
                    <div class="section-header text-center">
                        <h2 class="title">Administración</h2>
                    </div>
                    <!-- Susana Lizcano -->
                    <div class="col-sm-4" style="margin-top: 1em;">
                        <div class="team" >
                            <div class="team-img">
                                <img class="img-responsive" style="border-radius: 100%;" src="./img/FOTOS EQUIPO/susana.png" alt="">
                                <div class="overlay">
                                    <div class="team-social">
                                        <p class="p">
                                            Tecnóloga en Mercadotecnia y Comercio Internacional, técnica en servicio
                                            al cliente y ventas.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3>Susana Lizcano</h3>
                                <span>Administradora</span>
                            </div>
                        </div>
                    </div>
                    <!-- Eduardo Ordoñez -->
                    <div class="col-sm-4" style="margin-top: 1em;">
                        <div class="team" >
                            <div class="team-img">
                                <img class="img-responsive" style="border-radius: 100%;" src="./img/FOTOS EQUIPO/johan.png" alt="">
                                <div class="overlay">
                                    <div class="team-social">
                                        <p class="p">
                                            Abogado, Especialista en Derecho Administrativo y Especialista en Ciencias Penales y Criminológicas.

                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3>Eduardo Ordoñez</h3>
                                <span>Abogado</span>
                            </div>
                        </div>
                    </div>
                    <!-- Willington Serrano -->
                    <div class="col-sm-4" style="margin-top: 1em;">
                        <div class="team" >
                            <div class="team-img">
                                <img class="img-responsive" style="border-radius: 100%;" src="./img/FOTOS EQUIPO/willington.png" alt="">
                                <div class="overlay">
                                    <div class="team-social">
                                        <p class="p">
                                            Contador Público Titulado, Especialista en revisión Fiscal y Auditoria Externa, Outsourcing Contable,
                                            Asesoría tributaria y legal, Consultor de negocios.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3>Willington Serrano</h3>
                                <span>Contador</span>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- /Container -->
        </div>
        <!-- /team -->       

        <!-- Blog -->
        <div id="blog" class="section md-padding bg-grey">
            <!-- Container -->
            <div class="container">
                <!-- Row -->
                <div class="row">
                    <!-- Section header -->
                    <div class="section-header text-center">
                        <h2 class="title">Noticias</h2>
                    </div>
                    <!-- /Section header -->

                    <!-- blog -->
                    <div class="col-md-6">
                        <div class="blog">
                            <div class="blog-img">                                
                                <a href="https://www.actualcoin.net/leermas?idNoticia=247" target="_blank">
                                    <img src="img/actualcoinlogo.png" class="img-responsive">
                                </a>
                            </div>
                            <div class="blog-content">                                
                                <h3>Cripto Moneda Golden Hash (XGH) promete ser referencia en América Latina</h3>
                                <p style="text-align: justify;">
                                    América Latina es un área geográfica que últimamente ha tenido un alto interés
                                    por las criptomonedas y la tecnología descentralizada. A raíz de esto, un gran
                                    número de activos se ha vinculado al mercado. Tal es el caso de Golden Hash (XGH),
                                    una criptomoneda basada en el protocolo de Ethereum, que dará sus inicios, a mediados
                                    del presente mes.
                                </p>
                                <a href="https://www.actualcoin.net/leermas?idNoticia=247" target="_blank">Leer más</a>
                            </div>
                        </div>
                    </div>
                    <!-- /blog -->

                    <!-- blog -->
                    <div class="col-md-6">
                        <div class="blog">
                            <div class="blog-img">
                                <a href="PDF/Borbon.pdf" target="_blank">
                                    <img src="img/borbon-azul.png" class="img-responsive img_borbon">
                                </a>
                            </div>
                            <div class="blog-content">
                                <h3> Critptomoneda desarrollada bajo el protocolo de Ethereum, que se lanzará al mercado pronto.</h3>
                                <p style="text-align: justify;">
                                    Lo particular de esta divisa esqueproporciona a susinversionistas, colaboradores y usuarios,el acceso a espacios de
                                    almacenamiento de datos enla plataforma GoldenSpace, mediante una clave privada, además de la participación en distintos programas
                                    de recompensa. 
                                </p>
                                <a href="PDF/Borbon.pdf" target="_blank">Leer Más</a>
                            </div>
                        </div>
                    </div>
                    <!-- /blog -->

                    <div class="col-md-12">
                        <div class="blog" style="margin: auto">
                            <div class="blog-img">
                                <a href="https://coincodex.com/ico/golden-hash/ " target="_blank">
                                    <img src="img/coincodex-logo-desktop.png" class="img-responsive">
                                </a>
                            </div>
                            <div class="blog-content">
                                <h3> Golden Hash (Pre-Sale) ICO.</h3>
                                <p style="text-align: justify;">
                                    Golden Hash (XGH) es una criptomoneda que da acceso a una plataforma de almacenamiento encriptada llamada Golden Space.
                                </p>
                                <a href="https://coincodex.com/ico/golden-hash/" target="_blank">Leer más</a>
                            </div>
                        </div>
                    </div>
                    <!-- /blog -->

                </div>
                <!-- /Row -->

            </div>
            <!-- /Container -->

        </div>
        <!-- /Blog -->

        <!-- Contact -->
        <div id="contact" class="section md-padding">
            <!-- Container -->
            <div class="container">
                <!-- Row -->
                <div class="row">
                    <!-- Section-header -->
                    <div class="section-header text-center">
                        <h2 class="title">Contáctenos</h2>
                    </div>
                    <!-- /Section-header -->                   

                    <!-- contact -->
                    <div class="col-sm-12">
                        <div class="contact">
                            <i class="fa fa-envelope"></i>
                            <h3>Email</h3>
                            <p>info@goldenhash.org</p>
                        </div>
                    </div>
                    <!-- /contact -->                    

                    <!-- contact form -->
                    <div class="col-md-8 col-md-offset-2">
                        <form class="contact-form" name="contactForm" id="coontactForm" method="post" action="nuevo_mensaje">
                            <input name="contactName" type="text" id="contactName" class="input" placeholder="Nombre" value="" minlength="2" required="" aria-required="true">
                            <input name="contactEmail" type="email" id="contactEmail" class="input" placeholder="Email" value="" required="" aria-required="true">
                            <input name="contactSubject" type="text" id="contactSubject" class="input" placeholder="Asunto" value="" required="" aria-required="true">
                            <textarea name="contactMessage" id="contactMessage" class="input" placeholder="Mensaje" rows="10" cols="50" maxlength="500" required=""></textarea>
                            <button class="main-btn">Enviar Mensaje</button>
                        </form>
                    </div>
                    <!-- /contact form -->

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
                            <li><a class="twitter" href="https://twitter.com/xgh_moneda?lang=es" target="_blank"><i class="fa fa-twitter">  Twitter</i></a></li>  
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

        <!-- Back to top -->
        <div id="back-to-top"></div>
        <!-- /Back to top -->

        <!-- Preloader -->
        <div id="preloader">
            <div class="preloader">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
        <!-- /Preloader -->

        <!-- jQuery Plugins -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/owl.carousel.min.js"></script>
        <script type="text/javascript" src="js/jquery.magnific-popup.js"></script>
        <script type="text/javascript" src="js/main.js"></script>
        <script src="js/grafica/highcharts.js" type="text/javascript"></script>
        <script src="js/grafica/highcharts-3d.js" type="text/javascript"></script>

        <script src="js/moment.js" type="text/javascript"></script>
        <script src="js/moment-timezone-with-data.js" type="text/javascript"></script>
        <script src="js/timer.js" type="text/javascript"></script>

        <!-- Script que realiza el registro del mensaje contactanos -->
        <script src="js/registros/registro_mensaje.js" type="text/javascript"></script>

        <style>
            .highcharts-credits{
                display: none;
            }
        </style>

        <script>
            Highcharts.chart('grafica', {
                colors: [' #45668e ', '#007F73 ', '#4ABDAC', '#7BB5FC', '#304763'],
                chart: {
                    backgroundColor: 'transparent',
                    plotBorderWidth: null,
                    type: 'pie',
                    options3d: {
                        enabled: true,
                        alpha: 45,
                        beta: 0
                    }
                },
                //title: {
                //   text: '',
                //
                //y: 50,
                //},
                plotOptions: {
                    pie: {
                        allowPointSelect: false,
                        cursor: 'pointer',
                        depth: 35,
                        dataLabels: {
                            enabled: false
                        },
                        showInLegend: true
                    }
                },
                series: [{
                        name: 'Porcentaje',
                        colorByPoint: true,
                        data: [{
                                name: 'Pre-Ico + Ico. ',
                                y: 50
                            }, {
                                name: 'Ventas.',
                                y: 20
                            }, {
                                name: 'Recompensas por Referencias.',
                                y: 14
                            }, {
                                name: 'Equipo.',
                                y: 12
                            }, {
                                name: 'Responsabilidad Social.',
                                y: 4
                            }]
                    }]
            });
        </script>
    </body>

</html>
