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
public class Contrasena extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession misesion= req.getSession();
		String contraseña=(String)misesion.getAttribute("contraseña");
		if(req.getParameter("contraseñaa").equals(req.getParameter("contraseñan"))){
			misesion.setAttribute("cambio", "fallido");
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/realizado.jsp");
			rd.forward(req, resp);
		}
		else if(!req.getParameter("contraseñan").equals(req.getParameter("contraseñac"))){
			misesion.setAttribute("cambio", "nuevas");
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/realizado.jsp");
			rd.forward(req, resp);
		}
		else if(contraseña.equals(req.getParameter("contraseñaa"))){
			String codigo=(String)misesion.getAttribute("codigo");
			List<Empleado> p = PersonaService.personasXCodigo(codigo);
			for(Empleado x : p){
				x.setContraseña(req.getParameter("contraseñan"));
				misesion.setAttribute("cambio", "exito");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/realizado.jsp");
				rd.forward(req, resp);
			}
		}
			else{
				misesion.setAttribute("cambio", "nocoincide");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/realizado.jsp");
				rd.forward(req, resp);	
			}
			
		}
		
		
}