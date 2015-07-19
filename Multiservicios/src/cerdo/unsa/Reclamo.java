package cerdo.unsa;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.mail.*;
import javax.mail.internet.*;

import java.util.*;

@SuppressWarnings("serial")
public class Reclamo extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String nombre=req.getParameter("name");
		String email=req.getParameter("email");
		String asunto=req.getParameter("asunto");
		String reclamo=req.getParameter("reclamo");
		
		Properties props = new Properties();
	       Session session = Session.getDefaultInstance(props, null);
	      
	       String msgBodyEmail = nombre + "\n" + reclamo + "\n" + email;

	       try {
	           Message msg = new MimeMessage(session);
	           msg.setFrom(new InternetAddress("adarajaejoong@gmail.com","Adara"));
	           msg.addRecipient(Message.RecipientType.TO, new InternetAddress(email, nombre));
	           msg.setSubject("prueba");
	           msg.setText(msgBodyEmail);
	           Transport.send(msg);

	       } catch (Exception e) {
	           resp.setContentType("text/plain");
	           resp.getWriter().println("HUBO FALLO.");
	           throw new RuntimeException(e);
	       }

	       resp.setContentType("text/plain");
	       resp.getWriter().println( "SE ENVIO EL EMAIL CORRECTAMENTE.");
	   }
	}
	


