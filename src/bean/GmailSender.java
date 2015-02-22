package bean;
import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.internet.MimeMessage.RecipientType; 
import java.util.*;

public class GmailSender {
 
	 public static String TO ;
	 public static String TEXT;
 
    public static synchronized void send() {
        //Use Properties object to set environment properties
        
 
        try {
        	
        	
        	String HOST = "smtp.gmail.com";
            String USER = "satisharya.mca@gmail.com";
            String PASSWORD = "s1a1t1i1";
            String PORT = "465";
            String FROM = "satisharya.mca@gmail.com";
           
         
            String STARTTLS = "true";
            String AUTH = "true";
            String DEBUG = "true";
            String SOCKET_FACTORY = "javax.net.ssl.SSLSocketFactory";
            String SUBJECT = "WELCOME TO HUMAN RESOURCE SOLUTIONS.";
           
        	
        	Properties props = new Properties();
        	 
            /*props.put("mail.smtp.host", HOST);
            props.put("mail.smtp.port", PORT);
            props.put("mail.smtp.user", USER);
     
            props.put("mail.smtp.auth", AUTH);
            props.put("mail.smtp.starttls.enable", STARTTLS);
            props.put("mail.smtp.debug", DEBUG);
     
            props.put("mail.smtp.socketFactory.port", PORT);
            props.put("mail.smtp.socketFactory.class", SOCKET_FACTORY);
            props.put("mail.smtp.socketFactory.fallback", "false");
     */   	
        	
 
            //Obtain the default mail session
            Session session = Session.getDefaultInstance(props, null);
            session.setDebug(true);
 
            //Construct the mail message
            MimeMessage message = new MimeMessage(session);
            message.setText(TEXT);
            message.setSubject(SUBJECT);
            message.setFrom(new InternetAddress(FROM));
            message.addRecipient(RecipientType.TO, new InternetAddress(TO));
            message.saveChanges();
 
            //Use Transport to deliver the message
            Transport transport = session.getTransport("smtp");
            transport.connect(HOST, USER, PASSWORD);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
 
        } catch (Exception e) {
            //e.printStackTrace();
            System.out.println(e);
        }
 
    }
 
    public static void main(String[] args) {
       GmailSender.send();
       System.out.println("Mail sent successfully!");
    }
}


