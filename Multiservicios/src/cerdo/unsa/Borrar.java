package cerdo.unsa;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Borrar extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession bri= req.getSession(true);
		bri.setMaxInactiveInterval(30);// 10 segundos
		bri.setAttribute("acceso","ver");
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Empleado.class);
		q.setFilter("codicoe == codicoeParam");
		q.declareParameters("String codicoeParam");
		String empleado=req.getParameter("eliminar");
		try{
			List<Empleado> personas = (List<Empleado>) q.execute(empleado);
			for(Empleado p: personas){
				pm.deletePersistent(p);	
			resp.sendRedirect("/admin");
			}
			
		}catch(Exception e){
			
		}finally{
			 q.closeAll();
		}


	}
}