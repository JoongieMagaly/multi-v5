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

@SuppressWarnings("serial")
public class Cambioc extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		if(req.getParameter("contras")==null){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/fallo.jsp");
			rd.forward(req, resp);
	}
		else{
		
		HttpSession d= req.getSession();
		String contraseña=req.getParameter("contras");
		String cod=(String)d.getAttribute("cod");
		List<Empleado>p=PersonaService.personasXCodigo(cod);
		if(p.size()==1){
			for(Empleado x:p){
				x.setContraseña(contraseña);
			}
		
		
	try {
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/combiado.jsp");
		rd.forward(req, resp);
	}
	catch(Exception e){
		System.out.println(e.getMessage());
	}
	
	finally{ 	//out.close();
	}
		}
		}
	}}
