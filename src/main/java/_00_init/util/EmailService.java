package _00_init.util;

import java.util.HashMap;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.hibernate.mapping.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import _00_init.model.Mail;

@Service
public class EmailService {

	private static String SENDER = ""; // GMail user name (just the part before "@gmail.com")
	private static String PASSWORD = ""; // GMail password
	private static String HOST_GMAIL = "smtp.gmail.com";
	private static String HOST_YAHOO = "smtp.mail.yahoo.com";
	private static String HOST_OUTLOOK = "smtp-mail.outlook.com";
	private static HashMap<String, String> Host = new HashMap<String, String>();

	public EmailService() {
		init();
	}

	private void init() {
		Host.put("gmail", HOST_GMAIL);
		Host.put("yahoo", HOST_YAHOO);
		Host.put("outlook", HOST_OUTLOOK);
	}

	public void sendSimpleMessage(final Mail mail) {
		// Find first string after @ simple to get stmp host
		String host = Host.get(mail.getReceiver().substring(mail.getReceiver().indexOf("@") + 1).split("\\.")[0]);

//		sendFromGMail(GlobalService.decryptString(GlobalService.KEY, mail.getSender()),
//					  GlobalService.decryptString(GlobalService.KEY, mail.getsPassword()), 
//					  new String[] { mail.getReceiver() },
//					  mail.getSubject(), 
//					  mail.getContent(),
//					  host);
		sendFromGMail(mail.getSender(), mail.getsPassword(), new String[] { mail.getReceiver() }, mail.getSubject(),
				mail.getContent(), host);
		System.out.println("Send Mail Success!");

	}

	private static void sendFromGMail(String from, String pass, String[] to, String subject, String body, String host) {
		Properties props = System.getProperties();

		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.user", from);
		props.put("mail.smtp.password", pass);
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");

		Session session = Session.getDefaultInstance(props);
		MimeMessage message = new MimeMessage(session);

		try {
//            message.setFrom(new InternetAddress(from));
			InternetAddress[] toAddress = new InternetAddress[to.length];

			// To get the array of addresses
			for (int i = 0; i < to.length; i++) {
				toAddress[i] = new InternetAddress(to[i]);
			}

			for (int i = 0; i < toAddress.length; i++) {
				message.addRecipient(Message.RecipientType.TO, toAddress[i]);
			}

			message.setSubject(subject);
			message.setText(body);
			Transport transport = session.getTransport("smtp");
			transport.connect(host, from, pass);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
		} catch (AddressException ae) {
			ae.printStackTrace();
		} catch (MessagingException me) {
			me.printStackTrace();
		}
	}

	// Test code
	public static void main(String[] args) {
		Mail mail = new Mail();
		mail.setSender("sa");
		mail.setsPassword("passw0rd");
		mail.setReceiver("moghost520@gmail.com");
		mail.setContent("Java Mail Test");
		mail.setSubject("Test");
		new EmailService().sendSimpleMessage(mail);
	}

}
