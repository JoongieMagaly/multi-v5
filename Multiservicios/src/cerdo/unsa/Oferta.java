package cerdo.unsa;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.jdo.Query;
import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Oferta extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse resp)throws IOException {
		
		HttpSession pedidosesion = req.getSession();
		
		String num = (String)pedidosesion.getAttribute("numeroBoleta");
		
		pedidosesion.setAttribute("numeroBoleta", num);
		
		PersistenceManager pmf = PMF.get().getPersistenceManager();
		String combo = req.getParameter("combo");
		System.out.println(combo);
		
		if (combo.equals("na")){
			resp.sendRedirect("/noOferta");
		}
		
		try{
			Carne c = null;
			Embutido em = null;
			double precio = 0.0;
			double precioC = 0.0;
			double precioE = 0.0;
			
			if (combo.equals("combo1")){
				//1Kg de Pierna + 1Kg de Jamonada
				ArrayList<String> forma = new ArrayList<String>();
				ArrayList<Integer> peso = new ArrayList<Integer>();
				ArrayList<String> unidad = new ArrayList<String>();
				forma.add("Para el horno");
				peso.add(1);
				unidad.add("kg");
				c = new Carne("Pierna", forma, peso, unidad);
				em = new Embutido("Jamonada", 1, "kg");
				precioC = 11.50;
				precioE = 9;
				precio = 20.50;
			}
			else if (combo.equals("combo2")){
				//1Kg de Costilla+1Kg de Manteca
				ArrayList<String> forma = new ArrayList<String>();
				ArrayList<Integer> peso = new ArrayList<Integer>();
				ArrayList<String> unidad = new ArrayList<String>();
				forma.add("Para el horno");
				peso.add(1);
				unidad.add("kg");
				c = new Carne("Costilla", forma, peso, unidad);
				em = new Embutido("Manteca", 1, "kg");
				precioC = 11.50;
				precioE = 4;
				precio = 15.50;
			}
			else if (combo.equals("combo3")){
				//1Kg de Brazuelo+1Kg de Queso de Chancho
				ArrayList<String> forma = new ArrayList<String>();
				ArrayList<Integer> peso = new ArrayList<Integer>();
				ArrayList<String> unidad = new ArrayList<String>();
				forma.add("Para el horno");
				peso.add(1);
				unidad.add("kg");
				c = new Carne("Brazuelo", forma, peso, unidad);
				em = new Embutido("Queso de chancho", 1, "kg");
				precioC = 9.50;
				precioE = 12;
				precio = 21.50;
			}else{
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/boleta.jsp");
				rd.forward(req, resp);
			}
			
			long n = Long.parseLong(num);
			
			Query q = pmf.newQuery(Pedido.class);
			List<Pedido> pedidos = (List<Pedido>) q.execute();
			int index=0;
			for (int i=0; i<pedidos.size(); i++){
				if (pedidos.get(i).getNum().equals(num)){
					index = i;
					break;
				}
			}
			
			if (!pedidos.get(index).getCarnes().isEmpty()){
				int aux = -1;
				int aux2 = -1;
				for (int i=0; i < pedidos.get(index).getCarnes().size(); i++){
					if (c.getNombre().equals(pedidos.get(index).getCarnes().get(i).getNombre())){
						aux2 = i;
						break;
					}
				}
				if (aux2 != -1){
					for (int i=0; i < pedidos.get(index).getCarnes().get(aux2).getForma().size(); i++){
						if (pedidos.get(index).getCarnes().get(aux2).getForma().get(i).equals(c.getForma().get(0))){
							aux = i;
							break;
						}
					}
					if (aux != -1){
						if (pedidos.get(index).getCarnes().get(aux2).getUnidad().get(aux).equals("kg")){
							int nprecio = pedidos.get(index).getCarnes().get(aux2).getPeso().get(aux)+c.getPeso().get(0);
							pedidos.get(index).getCarnes().get(aux2).getPeso().set(aux, nprecio);
						}else{
							int nprecio = (c.getPeso().get(0)*1000)+pedidos.get(index).getCarnes().get(aux2).getPeso().get(aux);
							pedidos.get(index).getCarnes().get(aux2).getPeso().set(aux, nprecio);
						}
					}else{
						pedidos.get(index).getCarnes().get(aux2).getForma().add(c.getForma().get(0));
						pedidos.get(index).getCarnes().get(aux2).getPeso().add(c.getPeso().get(0));
						pedidos.get(index).getCarnes().get(aux2).getUnidad().add(c.getUnidad().get(0));
					}
				}else{
					pedidos.get(index).getCarnes().add(c);
				}
			}else
				pedidos.get(index).getCarnes().add(c);
			
			if (!pedidos.get(index).getEmbutidos().isEmpty()){
				int aux = -1;
				for (int i=0; i < pedidos.get(index).getEmbutidos().size(); i++){
					if (em.getNombre().equals(pedidos.get(index).getEmbutidos().get(i).getNombre())){
						aux = i;
						break;
					}
				}
				if (aux != -1){
					if (pedidos.get(index).getEmbutidos().get(aux).getUnidad().equals("kg")){
						int npeso = pedidos.get(index).getEmbutidos().get(aux).getPeso() + em.getPeso();
						pedidos.get(index).getEmbutidos().get(aux).setPeso(npeso);
					}else{
						int npeso = (em.getPeso()*1000)+pedidos.get(index).getEmbutidos().get(aux).getPeso();
						pedidos.get(index).getEmbutidos().get(aux).setPeso(npeso);
					}
				}else{
					pedidos.get(index).getEmbutidos().add(em);
				}
			}else
				pedidos.get(index).getEmbutidos().add(em);
			
			
			double precioTotal = pedidos.get(index).getPrecioCarnes() + pedidos.get(index).getPrecioEmbutidos() + precio;
			precioC = precioC+pedidos.get(index).getPrecioCarnes();
			precioE = precioE+pedidos.get(index).getPrecioEmbutidos();
			pedidos.get(index).setPrecioTotal(precioTotal);
			pedidos.get(index).setPrecioCarnes(precioC);
			pedidos.get(index).setPrecioEmbutidos(precioE);
			
			String ptl = Double.toString(precioTotal);
			String price1 = Double.toString(precioE);
			String price2 = Double.toString(precioC);
			pedidosesion.setAttribute("precio1", price1);
			pedidosesion.setAttribute("precio2", price2);
			pedidosesion.setAttribute("precioTotal", ptl);
			req.setAttribute("carnes", pedidos.get(index).getCarnes());
			req.setAttribute("embutidos", pedidos.get(index).getEmbutidos());
			
			System.out.println(pedidos.get(index));
			
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/boleta.jsp");
			rd.forward(req, resp);
		}catch (Exception e){
			System.out.println(e.getMessage());
		}finally{
			pmf.close();
		}
		
	}

}
