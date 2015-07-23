package cerdo.unsa;
	import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.util.List;

import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

	@SuppressWarnings("serial")
	public class Visita extends HttpServlet{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			HttpSession votar= req.getSession(true);
			votar.setMaxInactiveInterval(30);// 10 sleaegundos
			
			String ip = null; // IP del cliente
			String host = null; // Host del cliente
			 
			ip = req.getRemoteAddr();
			host = req.getRemoteHost();
			
		 System.out.println(ip);
		 System.out.println(host);
		 votar.setAttribute("ip",ip);
		 votar.setAttribute("host", host);
		 
			
		try {
			if(PersonaService.personaXIp(ip)==true){
				votar.setAttribute("voto","no");
				System.out.println("entro");
			}
			else{
				votar.setAttribute("voto","si");
			}
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/delivery.jsp");
			rd.forward(req, resp);
		}
		catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		finally{ 	//out.close();
		}
	}
}

