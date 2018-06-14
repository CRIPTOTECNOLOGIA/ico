package Correos;

import java.util.Map;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author CRIPTOTECNOLOGIA
 */
public class Correo_envio {

    private static String remitente = "programacion.golden.hash@gmail.com";  //Para la dirección nomcuenta@gmail.com
    private static String clave = "Qazwsx*-";
    
    public static void enviarConGMail(String destinatario, String asunto, String cuerpo) {
        // Esto es lo que va delante de @gmail.com en tu cuenta de correo. Es el remitente también.

        Properties props = System.getProperties();
        props.put("mail.smtp.host", "smtp.gmail.com");  //El servidor SMTP de Google
        props.put("mail.smtp.user", remitente);
        props.put("mail.smtp.clave", clave);    //La clave de la cuenta
        props.put("mail.smtp.auth", "true");    //Usar autenticación mediante usuario y clave
        props.put("mail.smtp.starttls.enable", "true"); //Para conectar de manera segura al servidor SMTP
        props.put("mail.smtp.port", "587"); //El puerto SMTP seguro de Google

        Session session = Session.getDefaultInstance(props);
        MimeMessage message = new MimeMessage(session);

        try {
            message.setFrom(new InternetAddress(remitente));
            message.addRecipient(Message.RecipientType.TO,new InternetAddress(destinatario));   //Se podrían añadir varios de la misma manera
            message.setSubject(asunto);
            message.setText(cuerpo);
            Transport transport = session.getTransport("smtp");
            transport.connect("smtp.gmail.com", remitente, clave);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
        } catch (MessagingException me) {
            me.printStackTrace();   //Si se produce un error
        }
    }

    public static void main(String[] args) {
        String destinatario = "luisgelvis123@gmail.com"; //A quien le quieres escribir.
        String asunto = "ALERTA REGISTRO NUEVO SIN REVISAR";
        String cuerpo = "Hemos encontrado un nuevo registro el cuál no se ha verificado por más de 20 minutos.\n"
                + "Ingresa a esta URL para verificarlo https://www.icogoldenhash.com/p09RSqfQxac2WCWV82yw.jsp?id_usuario=166 \n"
                + "Criptotecnología-Programación..\n"
                + "Mensaje de prueba correos";
        
        enviarConGMail(destinatario, asunto, cuerpo);
    }
}
