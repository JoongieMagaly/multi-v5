package cerdo.unsa;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.jdo.Query;
import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class ConfirmarPedido extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse resp)throws IOException {
		
		String nomb = req.getParameter("nombre");
		String ide = req.getParameter("ide");
		String direccion = req.getParameter("direccion");
		String telefono = req.getParameter("telefono");
		String fecha = req.getParameter("fechare");
		
		long id = Long.parseLong(ide);
		long telf = Long.parseLong(telefono);
		
		String nombcarne = null;
		ArrayList<String> forma = null;
		ArrayList<String> unidad = null;
		ArrayList<Integer> peso = null;
		ArrayList<Carne> carnes = new ArrayList<Carne>();
		ArrayList<Embutido> embutidos = new ArrayList<Embutido>();
		
		PersistenceManager pmf = PMF.get().getPersistenceManager();
		try{
			if (req.getParameter("peso1")!=null || req.getParameter("peso2")!=null){
				//public Carne(String nombre, ArrayList<String> forma, ArrayList<Integer> peso, ArrayList<String> unidad){
				nombcarne = "Cabeza";
				forma = new ArrayList<String>();
				unidad = new ArrayList<String>();
				peso = new ArrayList<Integer>();
				if (req.getParameter("peso1")!=null){
					forma.add("Entera");
					peso.add(Integer.parseInt(req.getParameter("peso1")));
					if (req.getParameter("unidad1")!=null) unidad.add(req.getParameter("unidad1"));
				}
				if (req.getParameter("peso2")!=null){
					forma.add("Picada");
					peso.add(Integer.parseInt(req.getParameter("peso2")));
					if (req.getParameter("unidad2")!=null) unidad.add(req.getParameter("unidad2"));
				}
				Carne carne = new Carne(nombcarne, forma, peso, unidad);
				carnes.add(carne);
			}
			if (req.getParameter("peso3")!=null || req.getParameter("peso4")!=null){
				nombcarne = "Cogote";
				forma = new ArrayList<String>();
				unidad = new ArrayList<String>();
				peso = new ArrayList<Integer>();
				if (req.getParameter("peso3")!=null){
					forma.add("Para el adobo");
					peso.add(Integer.parseInt(req.getParameter("peso3")));
					if (req.getParameter("unidad3")!=null) unidad.add(req.getParameter("unidad3"));
				}
				if (req.getParameter("peso4")!=null){
					forma.add("Para el horno");
					peso.add(Integer.parseInt(req.getParameter("peso4")));
					if (req.getParameter("unidad4")!=null) unidad.add(req.getParameter("unidad4"));
				}
				Carne carne = new Carne(nombcarne, forma, peso, unidad);
				carnes.add(carne);
			}
			if (req.getParameter("peso5")!=null || req.getParameter("peso6")!=null){
				nombcarne = "Costillas";
				forma = new ArrayList<String>();
				unidad = new ArrayList<String>();
				peso = new ArrayList<Integer>();
				if (req.getParameter("peso5")!=null){
					forma.add("Para chicharrón");
					peso.add(Integer.parseInt(req.getParameter("peso5")));
					if (req.getParameter("unidad5")!=null) unidad.add(req.getParameter("unidad5"));
				}
				if (req.getParameter("peso6")!=null){
					forma.add("Para el horno");
					peso.add(Integer.parseInt(req.getParameter("peso6")));
					if (req.getParameter("unidad6")!=null) unidad.add(req.getParameter("unidad6"));
				}
				Carne carne = new Carne(nombcarne, forma, peso, unidad);
				carnes.add(carne);
			}
			if (req.getParameter("peso7")!=null || req.getParameter("peso8")!=null){
				nombcarne = "Lomo";
				forma = new ArrayList<String>();
				unidad = new ArrayList<String>();
				peso = new ArrayList<Integer>();
				if (req.getParameter("peso7")!=null){
					forma.add("Chuleta");
					peso.add(Integer.parseInt(req.getParameter("peso7")));
					if (req.getParameter("unidad7")!=null) unidad.add(req.getParameter("unidad7"));
				}
				if (req.getParameter("peso8")!=null){
					forma.add("Para el horno");
					peso.add(Integer.parseInt(req.getParameter("peso8")));
					if (req.getParameter("unidad8")!=null) unidad.add(req.getParameter("unidad8"));
				}
				Carne carne = new Carne(nombcarne, forma, peso, unidad);
				carnes.add(carne);
			}
			if (req.getParameter("peso9")!=null || req.getParameter("peso10")!=null
					|| req.getParameter("peso11")!=null || req.getParameter("peso12")!=null){
				nombcarne = "Brazuelo";
				forma = new ArrayList<String>();
				unidad = new ArrayList<String>();
				peso = new ArrayList<Integer>();
				if (req.getParameter("peso9")!=null){
					forma.add("Para el adobo");
					peso.add(Integer.parseInt(req.getParameter("peso9")));
					if (req.getParameter("unidad9")!=null) unidad.add(req.getParameter("unidad9"));
				}
				if (req.getParameter("peso10")!=null){
					forma.add("Para el horno");
					peso.add(Integer.parseInt(req.getParameter("peso10")));
					if (req.getParameter("unidad10")!=null) unidad.add(req.getParameter("unidad10"));
				}
				if (req.getParameter("peso11")!=null){
					forma.add("Para chicharrón");
					peso.add(Integer.parseInt(req.getParameter("peso11")));
					if (req.getParameter("unidad11")!=null) unidad.add(req.getParameter("unidad11"));
				}
				if (req.getParameter("peso12")!=null){
					forma.add("Chuleta");
					peso.add(Integer.parseInt(req.getParameter("peso12")));
					if (req.getParameter("unidad12")!=null) unidad.add(req.getParameter("unidad12"));
				}
				Carne carne = new Carne(nombcarne, forma, peso, unidad);
				carnes.add(carne);
			}
			if (req.getParameter("peso13")!=null || req.getParameter("peso14")!=null){
				nombcarne = "Pierna";
				forma = new ArrayList<String>();
				unidad = new ArrayList<String>();
				peso = new ArrayList<Integer>();
				if (req.getParameter("peso13")!=null){
					forma.add("Chuleta");
					peso.add(Integer.parseInt(req.getParameter("peso13")));
					if (req.getParameter("unidad13")!=null) unidad.add(req.getParameter("unidad13"));
				}
				if (req.getParameter("peso14")!=null){
					forma.add("Para el horno");
					peso.add(Integer.parseInt(req.getParameter("peso14")));
					if (req.getParameter("unidad14")!=null) unidad.add(req.getParameter("unidad14"));
				}
				Carne carne = new Carne(nombcarne, forma, peso, unidad);
				carnes.add(carne);
			}
			String precio1 = req.getParameter("total1");
			double price1 = Double.parseDouble(precio1);
			
			String uni="";
			int p=0;
			if (req.getParameter("peso15")!=null){
				nombcarne = "Queso de chancho";
				p = Integer.parseInt(req.getParameter("peso15"));
				if (req.getParameter("unidad15")!=null) 
					uni = req.getParameter("unidad15");
				Embutido embutido = new Embutido(nombcarne, p, uni);
				embutidos.add(embutido);
			}
			if (req.getParameter("peso16")!=null){
				nombcarne = "Jamonada";
				p = Integer.parseInt(req.getParameter("peso16"));
				if (req.getParameter("unidad16")!=null) 
					uni = req.getParameter("unidad16");
				Embutido embutido = new Embutido(nombcarne, p, uni);
				embutidos.add(embutido);
			}
			if (req.getParameter("peso17")!=null){
				nombcarne = "Mortadela";
				p = Integer.parseInt(req.getParameter("peso17"));
				if (req.getParameter("unidad17")!=null) 
					uni = req.getParameter("unidad17");
				Embutido embutido = new Embutido(nombcarne, p, uni);
				embutidos.add(embutido);
			}
			if (req.getParameter("peso18")!=null){
				nombcarne = "Salchicha arequipeña";
				p = Integer.parseInt(req.getParameter("peso18"));
				if (req.getParameter("unidad18")!=null) 
					uni = req.getParameter("unidad18");
				Embutido embutido = new Embutido(nombcarne, p, uni);
				embutidos.add(embutido);
			}
			if (req.getParameter("peso19")!=null){
				nombcarne = "Chorizo";
				p = Integer.parseInt(req.getParameter("peso19"));
				if (req.getParameter("unidad19")!=null) 
					uni = req.getParameter("unidad19");
				Embutido embutido = new Embutido(nombcarne, p, uni);
				embutidos.add(embutido);
			}
			if (req.getParameter("peso20")!=null){
				nombcarne = "Manteca";
				p = Integer.parseInt(req.getParameter("peso20"));
				if (req.getParameter("unidad20")!=null) 
					uni = req.getParameter("unidad20");
				Embutido embutido = new Embutido(nombcarne, p, uni);
				embutidos.add(embutido);
			}
			String precio2 = req.getParameter("total2");
			double price2 = Double.parseDouble(precio2);
			
			Pedido pedido = new Pedido(nombcarne, id, direccion, telf, fecha, carnes, embutidos, price1, price2);
			pmf.makePersistent(pedido);
			System.out.println(pedido);
			
			
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/boleta.jsp");
			rd.forward(req, resp);
			
			
		}catch (Exception e){
			System.out.println(e.getMessage());
		}finally{
			pmf.close();
		}
		
	}

}

