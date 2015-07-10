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
public class PermisoE extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	//resp.setContentType("text/html;charset=UTF-8");
	//PrintWriter out = resp.getWriter();
		HttpSession misesion= req.getSession();
		
	if(misesion.getAttribute("acceso").equals("permitido")){
		try {
			List<Pedido> personas = PersonaService.ListaPedidos();
			req.setAttribute("personas", personas);
			
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/entregapedido.jsp");
			rd.forward(req, resp);
	
		}finally{ 
		//out.close();
		}	
	}
}}
	