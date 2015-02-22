package com;

import java.util.*;

import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.activation.*;

class SendAttachment{
	
 public static void main(String [] args) throws AddressException, MessagingException
 {  }
 public static void send()throws AddressException, MessagingException
 {
	 String host = "smtp.gmail.com";//host name
	    String from = "";//sender id
	    String to = "shubhikabatra@gmail.com";//reciever id
	    String pass = "";//sender's password 
	    String fileAttachment = "C:\\Users\\shubhika\\Desktop\\s.jpeg";//file name for attachment 
	    //system properties
	    Properties prop = System.getProperties();
	    // Setup mail server properties
	    /*prop.put("mail.smtp.gmail", host);
	    prop.put("mail.smtp.starttls.enable", "true");
	    prop.put("mail.smtp.host", host);
	    prop.put("mail.smtp.user", from);
	    prop.put("mail.smtp.password", pass);
	    prop.put("mail.smtp.port", "587");
	    prop.put("mail.smtp.auth", "true");
	    *///session 
	    Session session = Session.getInstance(prop, null);
	    // Define message
	    MimeMessage message = new MimeMessage(session);
	    message.setFrom(new InternetAddress(from));
	    message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
	    message.setSubject("Hello Java Mail Attachment");
	    // create the message part 
	    MimeBodyPart messageBodyPart = new MimeBodyPart();
	    //message body
	    messageBodyPart.setText("Hi");
	    Multipart multipart = new MimeMultipart();
	    multipart.addBodyPart(messageBodyPart);
	    //attachment
	    messageBodyPart = new MimeBodyPart();
	    DataSource source = new FileDataSource(fileAttachment);
	    messageBodyPart.setDataHandler(new DataHandler(source));
	    messageBodyPart.setFileName(fileAttachment);
	    multipart.addBodyPart(messageBodyPart);
	    message.setContent(multipart);
	    //send message to reciever
	    Transport transport = session.getTransport("smtp");
	    transport.connect(host, from, pass);
	    transport.sendMessage(message, message.getAllRecipients());
	    
	    System.out.println("DONE");
	    transport.close();
	}
 }
