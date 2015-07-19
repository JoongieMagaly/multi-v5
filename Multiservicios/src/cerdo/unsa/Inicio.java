package cerdo.unsa;
import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Inicio extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
	try {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Visitas.class);
		Visitas vistas=null;
		List<Visitas> visitas = (List<Visitas>) q.execute();
		if(visitas.isEmpty()){
			vistas = new Visitas();
			//pm.deletePersistent(visitas.get(0));
			pm.makePersistent(vistas);
		}else{
			visitas.get(0).addVisita();
		}
		resp.sendRedirect("/principal");
		
	}
	catch(Exception e){
		System.out.println(e.getMessage());
	}
	
	finally{ 	//out.close();
	}
	}}


