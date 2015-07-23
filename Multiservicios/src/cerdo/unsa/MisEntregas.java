package cerdo.unsa;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
public class MisEntregas extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		List<Pedido> personas = new ArrayList<Pedido>();
		
		
		HttpSession misesion= req.getSession();
		String empleado=(String)misesion.getAttribute("codigo");
		
		List<Empleado> p= PersonaService.personasXCodigo(empleado);
   for(int i = 0; i < p.size() ; i++){
	   for(int j = 0; j < p.get(i).getMisentregas().size(); j++){
		   for(int k=0; k<PersonaService.productoXCodigo(p.get(i).getMisentregas().get(j)).size();k++){
			   List<Pedido> n=PersonaService.productoXCodigo(p.get(i).getMisentregas().get(j));
		   personas.add(n.get(k));
		   }
	   }
   }
		req.setAttribute("personas", personas);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/empleado.jsp");
		rd.forward(req, resp);	
	}
}