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

import java.io.IOException;
import java.io.PrintWriter;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;


@SuppressWarnings("serial")
public class Currilulum extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		HttpSession postulante= req.getSession(true);
		postulante.setMaxInactiveInterval(120);// 10 sleaegundos
		postulante.setAttribute("nombre",req.getParameter("nombre"));
		postulante.setAttribute("apellido",req.getParameter("apellido"));
		postulante.setAttribute("correo",req.getParameter("correo"));
		postulante.setAttribute("telefono",req.getParameter("telefono"));
		postulante.setAttribute("iden",req.getParameter("iden"));
		postulante.setAttribute("fecha",req.getParameter("fecha"));
		postulante.setAttribute("civil",req.getParameter("civil"));
		postulante.setAttribute("direccion",req.getParameter("direccion"));
		postulante.setAttribute("licencia",req.getParameter("licencia"));
		postulante.setAttribute("situacion",req.getParameter("situacion"));
		postulante.setAttribute("puesto",req.getParameter("puesto"));
		postulante.setAttribute("salario",req.getParameter("salario"));
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/cv.jsp");
		rd.forward(req, resp);
				
		
		
		
	}

}
