package cerdo.unsa;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Properties;

import javax.jdo.Query;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class Enviar extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		if(req.getParameter("cod")==null){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/fallo.jsp");
			rd.forward(req, resp);
	}
		else{
		HttpSession d= req.getSession(true);
		d.setMaxInactiveInterval(60);// 10 sleaegundos
		
		
		String correo=null;
		String cod=req.getParameter("cod");
		String nom=null;
		List<Empleado>p=PersonaService.personasXCodigo(cod);
		if(p.size()==1){
			for(Empleado x:p){
				correo=x.getCorreo();
				nom=x.getName();
			}
			d.setAttribute("cod",cod);
			
			Properties props = new Properties();
		       Session session = Session.getDefaultInstance(props, null);
		      
		       String msgBodyEmail = "Tu codigo de recuperación: " + "\n" + "34509865" ;

		       try {
		           Message msg = new MimeMessage(session);
		           msg.setFrom(new InternetAddress("brittyarely@gmail.com","Brigitte"));
		           msg.addRecipient(Message.RecipientType.TO, new InternetAddress(correo, nom));
		           msg.setSubject("prueba");
		           msg.setText(msgBodyEmail);
		           Transport.send(msg);

		       } catch (Exception e) {
		         
		           throw new RuntimeException(e);
		       }
		       RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/restablecer.jsp");
				rd.forward(req, resp);
		}
		else{
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/fallo.jsp");
			rd.forward(req, resp);
		}
		}
	
	}}
