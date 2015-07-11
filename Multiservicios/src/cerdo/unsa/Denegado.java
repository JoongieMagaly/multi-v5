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
public class Denegado extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
	try {
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/denegado.jsp");
		rd.forward(req, resp);
	}
	catch(Exception e){
		System.out.println(e.getMessage());
	}
	
	finally{ 	//out.close();
	}
	}}

