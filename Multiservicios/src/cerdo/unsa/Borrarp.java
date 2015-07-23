package cerdo.unsa;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Borrarp extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Pedido.class);
		try{
			List<Pedido> personas = (List<Pedido>) q.execute();
			for(Pedido p: personas){
				pm.deletePersistent(p);
			}
		}catch(Exception e){
			
		}finally{
			 q.closeAll();
		}


	}
}