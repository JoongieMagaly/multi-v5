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
public class Votar extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String ip = null; // IP del cliente
		String host = null; // Host del cliente
		 
		ip = req.getRemoteAddr();
		host = req.getRemoteHost();
		 System.out.println(ip);
		
		HttpSession votar= req.getSession();
		if(votar.getAttribute("voto").equals("no")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/delivery.jsp");
		    rd.forward(req, resp);
		}
		else if(votar.getAttribute("voto").equals("si")){
			votar.setAttribute("voto", "ya" );
			String cantidad=req.getParameter("v");
			int a=Integer.parseInt(cantidad);
			Estrella.setA(a);
			PersonaService.añadirIp(ip);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/delivery.jsp");
		    rd.forward(req, resp);
		    
		}
		
		
	}
}
