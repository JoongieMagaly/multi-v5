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
			throws IOException {

		HttpSession misesion= req.getSession();
		String e=(String)misesion.getAttribute("codigo");

		String codigo=req.getParameter("mandar");
System.out.println("codigo de pedido"+codigo);
System.out.println("codigo de person"+e);
List<Empleado> listae = PersonaService.personasXCodigo(e);	
System.out.println("dguhfbydn");
List<Pedido> p = PersonaService.productoXCodigo(codigo);

for(Empleado y : listae){
	System.out.println("yaaaaaaa baka andre1");
	for(Pedido x : p){
		System.out.println(x.getId());
y.setMisentregas(x);
System.out.println("yaaaaaaa baka andre2");
	}
}

	}
}
