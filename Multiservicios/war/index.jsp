
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cerdo.unsa.*"%>
<%@ page import="java.util.List"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="javax.jdo.Query"%>
<%@page import="javax.jdo.PersistenceManager"%>
<%
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
			}%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv='Refresh' content='0.05;url=/principal'>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>