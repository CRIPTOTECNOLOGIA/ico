package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class compra_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("        <meta name=\"format-detection\" content=\"telephone=no\">\n");
      out.write("        <meta property=\"og:url\" content=\"https://www.icogoldenhash.com\"> \n");
      out.write("\n");
      out.write("        <title>Golden Hash</title>\n");
      out.write("\n");
      out.write("        <!-- Google font -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300\" rel=\"stylesheet\"> \n");
      out.write("\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/bootstrap.min.css\" />\n");
      out.write("\n");
      out.write("        <!-- Owl Carousel -->\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/owl.carousel.css\" />\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/owl.theme.default.css\" />\n");
      out.write("\n");
      out.write("        <!-- Magnific Popup -->\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/magnific-popup.css\" />\n");
      out.write("\n");
      out.write("        <!-- Font Awesome Icon -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <!-- Custom stlylesheet -->\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/style.css\" />\n");
      out.write("        <link href=\"css/contador/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("        <script src=\"js/jquery-2.1.4.min.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("                <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("                <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("\n");
      out.write("        <!-- Librerias contador -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/flipclock.css\">\n");
      out.write("\n");
      out.write("        <!-- Línea de tiempo-->\n");
      out.write("        <link href=\"css/timeline.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <!-- Header -->\n");
      out.write("        <header id=\"home_compra\" style=\"background-color: #181C27\">\n");
      out.write("            <!-- Background Image -->\n");
      out.write("            <!-- /Background Image -->\n");
      out.write("\n");
      out.write("            <!-- Nav -->\n");
      out.write("            <nav id=\"nav\" class=\"navbar nav-transparent\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("\n");
      out.write("                    <div class=\"navbar-header\">\n");
      out.write("                        <!-- Logo -->\n");
      out.write("                        <div class=\"navbar-brand\">\n");
      out.write("                            <a href=\"index.html\">\n");
      out.write("                                <img class=\"logo\" src=\"img/img-logo/Logo Golden Hash Metal Azul.png\" alt=\"logo\">\n");
      out.write("                                <img class=\"logo-alt\" src=\"img/img-logo/Logo Golden Hash Metal Azul.png\" alt=\"logo\">\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- /Logo -->\n");
      out.write("\n");
      out.write("                        <!-- Collapse nav button -->\n");
      out.write("                        <div class=\"nav-collapse\" >\n");
      out.write("                            <span></span>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- /Collapse nav button -->\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!--  Main navigation  -->\n");
      out.write("                    <ul class=\"main-nav nav navbar-nav navbar-right\">\n");
      out.write("                        <li><a href=\"#home\">Inico</a></li>\n");
      out.write("                        <li><a href=\"#about\">¿Que es?</a></li>\n");
      out.write("                        <li><a href=\"#portafolio\">Características</a></li>\n");
      out.write("                        <li class=\"has-dropdown\">\n");
      out.write("                            <a href=\"#service\" >Golden Space</a>\n");
      out.write("                            <ul class=\"dropdown\">\n");
      out.write("                                <li><a href=\"#features\">¿Que Es?</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"has-dropdown\"><a href=\"#pricing\">Tokens</a>\n");
      out.write("                            <ul class=\"dropdown\">\n");
      out.write("                                <li><a href=\"#pricing\">Uso</a></li>\n");
      out.write("                                <li><a href=\"#distribucion_tokens\">Distribucion</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>                        \n");
      out.write("                        <li><a href=\"#timeline\">Linea de Tiempo</a></li>\n");
      out.write("                        <li><a href=\"#team\">Equipo</a></li>\n");
      out.write("                        <li><a href=\"#contact\">Contacto</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <!-- /Main navigation -->\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            <!-- /Nav -->\n");
      out.write("        </header>\n");
      out.write("        <!-- Contact -->\n");
      out.write("        <div id=\"contact\" class=\"section md-padding\">\n");
      out.write("            <!-- Container -->\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <!-- Row -->\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <!-- Section-header -->\n");
      out.write("                    <div class=\"section-header text-center\">\n");
      out.write("                        <h2 class=\"title\">Contactenos</h2>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /Section-header -->                   \n");
      out.write("\n");
      out.write("                    <!-- contact -->\n");
      out.write("                    <div class=\"col-sm-12\">\n");
      out.write("                        <div class=\"contact\">\n");
      out.write("                            <i class=\"fa fa-envelope\"></i>\n");
      out.write("                            <h3>Email</h3>\n");
      out.write("                            <p>info@goldenhash.org</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /contact -->                    \n");
      out.write("\n");
      out.write("                    <!-- contact form -->\n");
      out.write("                    <div class=\"col-md-8 col-md-offset-2\">\n");
      out.write("                        <form class=\"contact-form\" name=\"contactForm\" id=\"coontactForm\" method=\"post\" action=\"nuevo_mensaje\">\n");
      out.write("                            <input name=\"contactName\" type=\"text\" id=\"contactName\" class=\"input\" placeholder=\"Nombre\" value=\"\" minlength=\"2\" required=\"\" aria-required=\"true\">\n");
      out.write("                            <input name=\"contactEmail\" type=\"email\" id=\"contactEmail\" class=\"input\" placeholder=\"Email\" value=\"\" required=\"\" aria-required=\"true\">\n");
      out.write("                            <input name=\"contactSubject\" type=\"text\" id=\"contactSubject\" class=\"input\" placeholder=\"Asunto\" value=\"\" required=\"\" aria-required=\"true\">\n");
      out.write("                            <textarea name=\"contactMessage\" id=\"contactMessage\" class=\"input\" placeholder=\"Mensaje\" rows=\"10\" cols=\"50\" required=\"\"></textarea>\n");
      out.write("                            <button class=\"main-btn\">Enviar Mensaje</button>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /contact form -->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!-- /Row -->\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <!-- /Container -->\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- /Contact -->\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
