/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Correos;

import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author CRIPTOTECNOLOGIA
 */
public class Correo_envio_html {

    public void sendHtmlEmail(String host, String port,
            final String userName, final String password, String toAddress,
            String subject, String message) throws AddressException,
            MessagingException {

        // sets SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        // creates a new session with an authenticator
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(userName, password);
            }
        };

        Session session = Session.getInstance(properties, auth);

        // creates a new e-mail message
        Message msg = new MimeMessage(session);

        msg.setFrom(new InternetAddress(userName));
        InternetAddress[] toAddresses = {new InternetAddress(toAddress)};
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
        // set plain text message
        msg.setContent(message, "text/html");

        // sends the e-mail
        Transport.send(msg);
    }

    public static void send_correo(String destinatario, String nombre, String asunto, String tema, String cuerpo) {
        // SMTP server information
        String host = "smtp.gmail.com";
        String port = "587";
        String mailFrom = "programacion.golden.hash@gmail.com";
        String password = "Qazwsx*-";

        // outgoing message information
        String mailTo = "davidcasadiegos2818@gmail.com";
        String subject = asunto;

        // message contains HTML markups
        String message = "<div bgcolor=\"#000000\" class=\"div_content\">\n"
                + "\n"
                + "	<!-- HEADER -->\n"
                + "	<table width='100%' bgcolor=\"#45668E\">\n"
                + "		<tr>\n"
                + "			<td></td>\n"
                + "			<td width='100%'>\n"
                + "\n"
                + "				<div width='100%'>\n"
                + "					<table bgcolor=\"#45668E\">\n"
                + "						<tr>\n"
                + "							<td>\n"
                + "								<img height='100px' src=\"https://www.icogoldenhash.com/img/img-logo/GH_04.png\" />\n"
                + "							</td>\n"
                + "							<td align=\"center\">\n"
                + "								<font color='white'><h2>Golden Hash Contáctanos</h2></font>\n"
                + "							</td>\n"
                + "						</tr>\n"
                + "					</table>\n"
                + "				</div>\n"   
                + "\n"
                + "			</td>\n"
                + "			<td></td>\n"
                + "		</tr>\n"
                + "	</table>\n"
                + "	<!-- /HEADER -->\n"
                + "\n"
                + "\n"
                + "	<!-- BODY -->\n"
                + "	<table width='100%'"
                + "		<tr>\n"
                + "			<td></td>\n"
                + "			<td width='100%' class=\"container\" bgcolor=\"#FAFAFA\">\n"
                + "\n"
                + "				<div width='100%' class=\"content\">\n"
                + "					<table width='100%'>\n"
                + "						<tr width='100%'>\n"
                + "							<td>\n"
                + "								<h3>De: "+nombre+"</h3>\n"
                + "								<h4>Asunto: "+tema+"\n</h4>\n"
                + "								<p class=\"lead\">Descripción,</p>\n"
                + "								<p>\n"+cuerpo+"</p>\n"
                + "								<!-- Callout Panel -->\n"
                + "								<p class=\"callout\">\n"
                + "									Correo contacto cliente\n"
                + "									"+destinatario+"\n"
                + "								</p>\n"
                + "								<!-- /Callout Panel -->\n"
                + "\n"
                + "								<!-- social & contact -->\n"
                + "								<table class=\"social\" width=\"100%\">\n"
                + "									<tr>\n"
                + "										<td>\n"
                + "											<!-- column 2 -->\n"
                + "											<table align=\"left\" class=\"column\">\n"
                + "												<tr>\n"
                + "													<td>\n"
                + "\n"
                + "														<h5 class=\"\">Área de Programación Info:</h5>\n"
                + "															<br/> Email:\n"
                + "															<strong>\n"
                + "																<a href='emailto:programacion.golden.hash@gmail.com'>programacion.golden.hash@gmail.com</a>"
                + "															</strong>\n"
                + "														</p>\n"
                + "\n"
                + "													</td>\n"
                + "												</tr>\n"
                + "											</table>\n"
                + "											<!-- /column 2 -->\n"
                + "\n"
                + "											<span class=\"clear\"></span>\n"
                + "\n"
                + "										</td>\n"
                + "									</tr>\n"
                + "								</table>\n"
                + "								<!-- /social & contact -->\n"
                + "\n"
                + "							</td>\n"
                + "						</tr>\n"
                + "					</table>\n"
                + "				</div>\n"
                + "				<!-- /content -->\n"
                + "\n"
                + "			</td>\n"
                + "			<td></td>\n"
                + "		</tr>\n"
                + "	</table>\n"
                + "	<!-- /BODY -->\n"
                + "\n"
                + "</div>";
        Correo_envio_html mailer = new Correo_envio_html();

        try {
            mailer.sendHtmlEmail(host, port, mailFrom, password, mailTo,
                    subject, message);
            System.out.println("Email sent.");
        } catch (Exception ex) {
            System.out.println("Failed to sent email.");
            ex.printStackTrace();
        }
    }

    public static void main(String[] args) {
        String destinatario = "luisgelvis123@gmail.com"; //A quien le quieres escribir.
        String asunto = "ALERTA REGISTRO NUEVO SIN REVISAR";
        String cuerpo = "Hemos encontrado un nuevo registro el cuál no se ha verificado por más de 20 minutos.\n"
                + "Ingresa a esta URL para verificarlo https://www.icogoldenhash.com/p09RSqfQxac2WCWV82yw.jsp?id_usuario=166 \n"
                + "Criptotecnología-Programación..\n"
                + "Mensaje de prueba correos";

        Correo_envio_html corre = new Correo_envio_html();
        //corre.send_correo("davidcasadiegos2818@gmail.com", "prueba html", "texto");
    }
}
