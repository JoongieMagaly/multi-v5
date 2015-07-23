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
public class NoOferta extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse resp)throws IOException {
		
		HttpSession pedidosesion = req.getSession();
		
		String num = (String)pedidosesion.getAttribute("numeroBoleta");
		System.out.println(num);
		
		PersistenceManager pmf = PMF.get().getPersistenceManager();
		
		long n = Long.parseLong(num);
		
		try{
			Query q = pmf.newQuery(Pedido.class);
			List<Pedido> pedidos = (List<Pedido>) q.execute();
			int index=0;
			for (int i=0; i<pedidos.size(); i++){
				if (pedidos.get(i).getNum().equals(num)){
					index = i;
					break;
				}
			}
			
			String nomb = pedidos.get(index).getNombre();
			long id = pedidos.get(index).getIdentificacion();
			String ide = Long.toString(id);
			String direccion = pedidos.get(index).getDireccion();
			long telf = pedidos.get(index).getTelefono();
			String telefono = Long.toString(telf);
			String fecha = pedidos.get(index).getFechaRecojo();
			String formEn = pedidos.get(index).getFormEn();
			String hora = pedidos.get(index).getHora();
			String destino = pedidos.get(index).getDestino();
			double price1 = pedidos.get(index).getPrecioCarnes();
			double price2 = pedidos.get(index).getPrecioEmbutidos();
			double precioT = pedidos.get(index).getPrecioTotal();
			String precio1 = Double.toString(price1);
			String precio2 = Double.toString(price2);
			String ptl = Double.toString(precioT);
			ArrayList<Carne> carnes = pedidos.get(index).getCarnes();
			ArrayList<Embutido> embutidos = pedidos.get(index).getEmbutidos();
			
			pedidosesion.setAttribute("nombre", nomb);
			pedidosesion.setAttribute("identificacion", ide);
			pedidosesion.setAttribute("direccion", direccion);
			pedidosesion.setAttribute("telefono", telefono);
			pedidosesion.setAttribute("fechare", fecha);
			pedidosesion.setAttribute("formaEntrega", formEn);
			pedidosesion.setAttribute("hora", hora);
			pedidosesion.setAttribute("destino", destino);
			pedidosesion.setAttribute("precio1", precio1);
			pedidosesion.setAttribute("precio2", precio2);
			pedidosesion.setAttribute("precioTotal", ptl);
			req.setAttribute("carnes", carnes);
			req.setAttribute("embutidos", embutidos);
			
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/boleta.jsp");
			rd.forward(req, resp);
			
		}catch (Exception e){
			System.out.println(e.getMessage());
		}finally{
			pmf.close();
		}
		
	}

}
