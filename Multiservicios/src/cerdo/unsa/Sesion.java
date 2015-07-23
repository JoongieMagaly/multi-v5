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
public class Sesion extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession misesion= req.getSession(true);
		misesion.setMaxInactiveInterval(30);// 10 sleaegundos
		misesion.setAttribute("acceso","nuevo");
		
		
	try {
		
		if( req.getParameter("acceso").equals("nuevo")){
			misesion.setAttribute("acceso","nuevo");
			
			resp.sendRedirect("/iniciar");
		}
		

	}
	catch(Exception e){
		if( req.getParameter("usuario").equals("adminxxx")&&  req.getParameter("contraseña").equals("lokitaxti")){//||misesion.getAttribute("acceso").equals("permitido")){
			misesion.setAttribute("nombre","adminxxx");
			misesion.setAttribute("acceso","permitido");
			misesion.setAttribute("cargo", "admin");
			List<Empleado> personas = PersonaService.ListaEmpleados();
			req.setAttribute("personas", personas);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/admin.jsp");
			rd.forward(req, resp);
			
		}	
		else if(PersonaService.BuscarEmpleado(req.getParameter("usuario"),req.getParameter("contraseña"))==true){
			String codigo=req.getParameter("usuario");
			List<Empleado> p = PersonaService.personasXCodigo(codigo);
			String acces="";
			String nombre="";
			for(Empleado x : p){
				acces=x.getAcceso();
				nombre=x.getName();
			}
			if(acces.equals("permitido")){
				misesion.setAttribute("acceso","permitido");
				misesion.setAttribute("codigo", req.getParameter("usuario"));
				misesion.setAttribute("nombre",nombre);
				misesion.setAttribute("contraseña",req.getParameter("contraseña"));
				resp.sendRedirect("/misEntregas");
			}
			else{
				misesion.setAttribute("acceso","denegado");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/denegado");
				rd.forward(req, resp);	
			}
			
		}
		else if( !req.getParameter("usuario").equals("adminxxx") || !req.getParameter("contraseña").equals("lokitaxti")){
			System.out.println("carayyyyyyyyyyyyyyy");
			misesion.setAttribute("acceso","denegado");
			System.out.println("carayyyyyyyyyyyyyyy");
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/iniciar.jsp");
			rd.forward(req, resp);
			System.out.println("carayyyyyyyyyyyyyyy");
			
		}	
		else{
			System.out.println(":p");
			misesion.setAttribute("acceso","denegado");
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/iniciar.jsp");
			rd.forward(req, resp);	
		}
		
	}
	
	finally{ 	//out.close();
	}
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			HttpSession misesion= req.getSession(true);
			misesion.setMaxInactiveInterval(30);
			List<Empleado> personas = PersonaService.ListaEmpleados();
			req.setAttribute("personas", personas);
if(misesion.getAttribute("acceso").equals("permitido")){
	if(misesion.getAttribute("cargo").equals("admin")){
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/admin.jsp");
		rd.forward(req, resp);	
	}
	else{
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/empleado.jsp");
		rd.forward(req, resp);
	}
		
}
			
		}
		catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		finally{ 	//out.close();
		}
	}
}




