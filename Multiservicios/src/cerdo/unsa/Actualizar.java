package cerdo.unsa;
import java.io.IOException;
import java.io.PrintWriter;
//import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")

public class Actualizar extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String c=req.getParameter("c");
		String per=req.getParameter("permiso");
System.out.println(per);
System.out.println(c);
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Empleado.class);
		q.setFilter("acceso == accesoParam");
		q.declareParameters("String accesoParam");
		try{
			List<Empleado> personas = (List<Empleado>) q.execute(c);
			for(Empleado p: personas){
				System.out.println(p.getAcceso());
				p.setAcceso(per);
				System.out.println(p.getAcceso());
			}
			resp.sendRedirect("/sesion");
		}catch(Exception e){
			
		}finally{
			 q.closeAll();
		}		
	}
}