package cerdo.unsa;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.jdo.Query;
import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class ControlServlet extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse resp)throws IOException {
		
		PersistenceManager pmf = PMF.get().getPersistenceManager();
		try {
			Query q = pmf.newQuery(Control.class);
			List<Control> visitas = (List<Control>) q.execute();
			
			req.setAttribute("controlVisitas", visitas);
			
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/control.jsp");
			rd.forward(req, resp);
		}catch (Exception e){
			System.out.println(e.getMessage());
		}finally{ 
			pmf.close();
		}	
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)throws IOException {
		
		PersistenceManager pmf = PMF.get().getPersistenceManager();
		try {
			Query q = pmf.newQuery(Control.class);
			List<Control> visitas = (List<Control>) q.execute();
			
			req.setAttribute("controlVisitas", visitas);
			
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/control.jsp");
			rd.forward(req, resp);
		}catch (Exception e){
			System.out.println(e.getMessage());
		}finally{ 
			pmf.close();
		}	
		
	}

}
