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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\r\n");
      out.write("        <meta name=\"format-detection\" content=\"telephone=no\">\r\n");
      out.write("        <meta property=\"og:url\" content=\"https://www.icogoldenhash.com\"> \r\n");
      out.write("\r\n");
      out.write("        <title>Golden Hash</title>\r\n");
      out.write("\r\n");
      out.write("        <!-- Google font -->\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300\" rel=\"stylesheet\"> \r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap -->\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/bootstrap.min.css\" />\r\n");
      out.write("\r\n");
      out.write("        <!-- Owl Carousel -->\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/owl.carousel.css\" />\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/owl.theme.default.css\" />\r\n");
      out.write("\r\n");
      out.write("        <!-- Magnific Popup -->\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/magnific-popup.css\" />\r\n");
      out.write("\r\n");
      out.write("        <!-- Font Awesome Icon -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Custom stlylesheet -->\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/style.css\" />\r\n");
      out.write("        <link href=\"css/compra.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"css/contador/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"js/jquery-2.1.4.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n");
      out.write("        <!--[if lt IE 9]>\r\n");
      out.write("                <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\r\n");
      out.write("                <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n");
      out.write("        <![endif]-->\r\n");
      out.write("\r\n");
      out.write("        <!-- Librerias contador -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/flipclock.css\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Línea de tiempo-->\r\n");
      out.write("        <link href=\"css/timeline.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("        <!-- Header -->\r\n");
      out.write("        <header id=\"home_compra\">\r\n");
      out.write("            <!-- Background Image -->\r\n");
      out.write("            <!-- /Background Image -->\r\n");
      out.write("\r\n");
      out.write("            <!-- Nav -->\r\n");
      out.write("            <nav id=\"nav\" class=\"navbar nav-transparent\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"navbar-header\">\r\n");
      out.write("                        <!-- Logo -->\r\n");
      out.write("                        <div class=\"navbar-brand\">\r\n");
      out.write("                            <a href=\"index.jsp\">\r\n");
      out.write("                                <img class=\"logo\" src=\"img/img-logo/Logo Golden Hash Metal Azul.png\" alt=\"logo\">\r\n");
      out.write("                                <img class=\"logo-compra\" src=\"img/img-logo/Logo Golden Hash Metal Azul.png\" alt=\"logo\">\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- /Logo -->\r\n");
      out.write("\r\n");
      out.write("                        <!-- Collapse nav button -->\r\n");
      out.write("                        <div class=\"nav-collapse\" >\r\n");
      out.write("                            <span></span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- /Collapse nav button -->\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!--  Main navigation  -->\r\n");
      out.write("                    <ul class=\"main-nav nav navbar-nav navbar-right\">\r\n");
      out.write("                        <li><a href=\"#home\">Inico</a></li>\r\n");
      out.write("                        <li><a href=\"#about\">¿Que es?</a></li>\r\n");
      out.write("                        <li><a href=\"#portafolio\">Características</a></li>\r\n");
      out.write("                        <li class=\"has-dropdown\">\r\n");
      out.write("                            <a href=\"#service\" >Golden Space</a>\r\n");
      out.write("                            <ul class=\"dropdown\">\r\n");
      out.write("                                <li><a href=\"#features\">¿Que Es?</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"has-dropdown\"><a href=\"#pricing\">Tokens</a>\r\n");
      out.write("                            <ul class=\"dropdown\">\r\n");
      out.write("                                <li><a href=\"#pricing\">Uso</a></li>\r\n");
      out.write("                                <li><a href=\"#distribucion_tokens\">Distribucion</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>                        \r\n");
      out.write("                        <li><a href=\"#timeline\">Linea de Tiempo</a></li>\r\n");
      out.write("                        <li><a href=\"#team\">Equipo</a></li>\r\n");
      out.write("                        <li><a href=\"#contact\">Contacto</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <!-- /Main navigation -->\r\n");
      out.write("                </div>\r\n");
      out.write("            </nav>\r\n");
      out.write("            <!-- /Nav -->\r\n");
      out.write("        </header>\r\n");
      out.write("        <!-- Contact -->\r\n");
      out.write("        <div id=\"contact\" class=\"section sm-padding\">\r\n");
      out.write("            <!-- Container -->\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <!-- Row -->\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <!-- Section-header -->\r\n");
      out.write("                    <div class=\"section-header text-center\">\r\n");
      out.write("                        <h2 class=\"title\">Compra de Tokens</h2>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- /Section-header --> \r\n");
      out.write("                    \r\n");
      out.write("                    <div class=\"col-sm-12 col-md-6\">\r\n");
      out.write("                        <p>1. Seleccione el método de pago.</p>                           \r\n");
      out.write("                        <!-- Metodo de pago -->\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"row\" style=\"margin-top: 1em; margin-bottom: 1em;\">\r\n");
      out.write("                                <div class=\"col-sm-6\" onclick=\"checkDiv('#btc', '#eth')\">\r\n");
      out.write("                                    <div class=\"checkbox div_pago\">\r\n");
      out.write("                                        <label class=\"label_compra\" style=\"cursor:pointer; padding: 10px;\">\r\n");
      out.write("                                            <input type=\"checkbox\" class=\"checkbox-input\" id=\"btc\" name=\"btc\" onclick=\"check('#btc', '#eth')\" checked style=\"margin-top: 12px;\">\r\n");
      out.write("                                            <img src=\"img/Iconos/bitcoin_icon.png\" class=\"img-responsive\" style=\"cursor:pointer;\" width=\"40\" height=\"40\">\r\n");
      out.write("                                            <a class=\"a\">Bitcoin</a>\r\n");
      out.write("                                        </label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-sm-6\" onclick=\"checkDiv('#eth', '#btc')\">\r\n");
      out.write("                                    <div class=\"checkbox div_pago\">\r\n");
      out.write("                                        <label class=\"label_compra\" style=\"cursor:pointer; padding: 10px;\">\r\n");
      out.write("                                            <input type=\"checkbox\"  id=\"eth\" name=\"eth\" onclick=\"check('#eth', '#btc')\" style=\"margin-top: 12px;\">\r\n");
      out.write("                                            <img src=\"img/Iconos/ethereum_icon.svg\" class=\"img-responsive\" style=\"cursor:pointer;\" width=\"40\" height=\"40\">\r\n");
      out.write("                                            <a class=\"a\" >Ethereum</a>\r\n");
      out.write("                                        </label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- /Row -->\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /Container -->\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /Contact -->\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
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
