package cerdo.unsa;
import java.io.IOException;

import java.io.PrintWriter;
import javax.servlet.http.HttpSession;
//import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Admin extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	//resp.setContentType("text/html;charset=UTF-8");
	//PrintWriter out = resp.getWriter();
		HttpSession bri= req.getSession();
		
	if(bri.getAttribute("acceso").equals("ver")){
	try {
			List<Empleado> personas = PersonaService.ListaEmpleados();
			req.setAttribute("personas", personas);
			
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/admin.jsp");
			rd.forward(req, resp);
	
	}finally{ 
		//out.close();
	}	
	}
	
	}}
