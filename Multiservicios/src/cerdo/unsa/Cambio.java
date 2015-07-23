package cerdo.unsa;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class Cambio extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		if(req.getParameter("coda")==null){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/fallo.jsp");
			rd.forward(req, resp);
	}
		else{
		
		if(req.getParameter("coda").equals("34509865")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/contra.jsp");
			rd.forward(req, resp);
		}
		else{
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/fallo.jsp");
			rd.forward(req, resp);
		}
		
		}
	}}
