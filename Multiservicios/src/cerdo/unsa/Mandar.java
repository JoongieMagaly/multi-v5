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
public class Mandar extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {

		HttpSession misesion= req.getSession();
		String e=(String)misesion.getAttribute("codigo");
		String nom=null;
		List<Empleado>nombre=PersonaService.personasXCodigo(e);
		for(Empleado s:nombre){
			nom=s.getName();
		}
		System.out.println(e);
		String estado=req.getParameter("estado");
		System.out.println(estado);
		
		if(!estado.equals("No Entregado")){
			estado=estado.substring(0,9);
		}
		misesion.setAttribute("miestado", estado);
		if(estado.equals("Entregado")){
			System.out.println(estado);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/advertencia.jsp");
			rd.forward(req, resp);
		}
		else if(estado.equals("No Entregado")){
			
			String codigo=req.getParameter("c");
			System.out.println("codigo de pedido"+codigo);
			System.out.println("codigo de person"+e);
			List<Empleado> listae = PersonaService.personasXCodigo(e);	


			System.out.println("dguhfbydn");
			List<Pedido> p = PersonaService.productoXCodigo(codigo);
				for (int i = 0; i < listae.size() ; i++) {
					System.out.println("yaaaaaaa baka andre1");
					System.out.println(listae.get(i).getCodicoe());
					System.out.println(p.size());
					System.out.println(listae.size());
					for (int j = 0; j < p.size() ; j++) {
						p.get(j).setEstado("Entregado por: "+nom);						
						listae.get(i).setMisentregas(p.get(j).getNum());
						System.out.println("yaaaaaaa baka andre2");			
					}	
				}
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/advertencia.jsp");
				rd.forward(req, resp);
				
		}
}

	}

