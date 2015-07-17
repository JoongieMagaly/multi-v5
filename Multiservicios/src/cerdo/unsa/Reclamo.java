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
		
		Properties props=new Properties();
		Session session=Session.getDefaultInstance(props,null);
		
		String msgBodyEmail=nombre+"\n"+ asunto+ "\n"+ email+"\n"+ reclamo;
		
		try{
			Message msg=new MimeMessage(session);
			msg.setFrom(new InternetAddress("adarajaejoong@gmail.com","reclamos"));
			msg.addRecipient(Message.RecipientType.TO,new InternetAddress(email,nombre));
			msg.setSubject("feedback");
			msg.setText(msgBodyEmail);
			Transport.send(msg);
			resp.setContentType("text/plain");
			resp.getWriter().println("SE ENVIO CON EXITO");
			
		}catch(Exception e){
			resp.setContentType("text/plain");
			resp.getWriter().println("HUBO ERROR");
			throw new RuntimeException(e);
		}
		
	
	}
}
