package cerdo.unsa;
import java.io.IOException;
import java.io.PrintWriter;
//import java.io.PrintWriter;
import java.util.List;

import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class Codigo extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession registro= req.getSession(true);
int cont=(int)(Math.random()*(201500-201400+1)+201400);


	registro.setAttribute("usuarioe",cont);
	try {
		
		if( req.getParameter("acceso").equals("nuevo")){
			registro.setAttribute("acceso","nuevo");
			registro.setMaxInactiveInterval(30);// 10 segundos
			resp.sendRedirect("/registrar");
		}
		
	}
	catch(Exception e){
		if( req.getParameter("codigo").equals("1a2b3c4d5e") && req.getParameter("nombre")!=null && req.getParameter("apellido")!=null){
			registro.setAttribute("acceso","permitido");
			registro.setAttribute("nombre",req.getParameter("nombre"));
			registro.setAttribute("apellido",req.getParameter("apellido"));
			registro.setAttribute("correo",req.getParameter("correo"));
			
		
			registro.setMaxInactiveInterval(30);// 10 segundos
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/crear.jsp");
			rd.forward(req, resp);
		}	
		else {
			registro.setAttribute("acceso","denegado");
			registro.setMaxInactiveInterval(30);// 10 segundos
			resp.sendRedirect("/registrar");
		}		
		
	}
	
	finally{ 	//out.close();
	}
	}}

