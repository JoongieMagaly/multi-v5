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
public class HacerPedido extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse resp)throws IOException {
		
		ArrayList<Integer> numpeso = new ArrayList<Integer>();
		
		String[] cabeza = req.getParameterValues("cabeza");
		String[] cogote = req.getParameterValues("cogote");
		String[] costilla = req.getParameterValues("costilla");
		String[] lomo = req.getParameterValues("lomo");
		String[] brazuelo = req.getParameterValues("brazuelo");
		String[] pierna = req.getParameterValues("pierna");
		String queso = req.getParameter("queso");
		String jamonada = req.getParameter("jamonada");
		String mortadela = req.getParameter("mortadela");
		String salchicha = req.getParameter("salchicha");
		String chorizo = req.getParameter("chorizo");
		String manteca = req.getParameter("manteca");
		
		if (cabeza != null){
			for (String x : cabeza){
				if (x.equals("entera"))
					numpeso.add(1);
				if (x.equals("picada"))
					numpeso.add(2);
			}
		}
		
		if (cogote != null){
			for (String x : cogote){
				if (x.equals("adobo"))
					numpeso.add(3);
				if (x.equals("horno"))
					numpeso.add(4);
			}
		}
		
		if (costilla != null){
			for (String x : costilla){
				if (x.equals("chicharron"))
					numpeso.add(5);
				if (x.equals("horno"))
					numpeso.add(6);
			}
		}
		
		if (lomo != null){
			for (String x : lomo){
				if (x.equals("chuleta"))
					numpeso.add(7);
				if (x.equals("horno"))
					numpeso.add(8);
			}
		}
		
		if (brazuelo != null){
			for (String x : brazuelo){
				if (x.equals("adobo"))
					numpeso.add(9);
				if (x.equals("horno"))
					numpeso.add(10);
				if (x.equals("chicharron"))
					numpeso.add(11);
				if (x.equals("chuleta"))
					numpeso.add(12);
			}
		}
		
		if (pierna != null){
			for (String x : pierna){
				if (x.equals("chuleta"))
					numpeso.add(13);
				if (x.equals("horno"))
					numpeso.add(14);
			}
		}
		
		if (queso != null){
			numpeso.add(15);
		}
		
		if (jamonada != null){
			numpeso.add(16);
		}
		
		if (mortadela != null){
			numpeso.add(17);
		}
		
		if (salchicha != null){
			numpeso.add(18);
		}
		
		if (chorizo != null){
			numpeso.add(19);
		}
		
		if (manteca != null){
			numpeso.add(20);
		}
		
		req.setAttribute("numeros", numpeso);
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/pedidos1.jsp");
		try {
			rd.forward(req, resp);
		} catch (ServletException e) {
			System.out.println(e.getMessage());
		}
		
	}

}
