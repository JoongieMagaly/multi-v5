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
		String contrase�a=(String)misesion.getAttribute("contrase�a");
		if(req.getParameter("contrase�aa").equals(req.getParameter("contrase�an"))){
			misesion.setAttribute("cambio", "fallido");
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/realizado.jsp");
			rd.forward(req, resp);
		}
		else if(!req.getParameter("contrase�an").equals(req.getParameter("contrase�ac"))){
			misesion.setAttribute("cambio", "nuevas");
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/realizado.jsp");
			rd.forward(req, resp);
		}
		else if(contrase�a.equals(req.getParameter("contrase�aa"))){
			String codigo=(String)misesion.getAttribute("codigo");
			List<Empleado> p = PersonaService.personasXCodigo(codigo);
			for(Empleado x : p){
				x.setContrase�a(req.getParameter("contrase�an"));
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