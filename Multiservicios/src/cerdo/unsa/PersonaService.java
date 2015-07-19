package cerdo.unsa;

import java.util.List;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;

/* Clase que tendrÃ¡ los mÃ©todos para registrar y hacer consulta de los datos, 
 * para hacer consulta de datos usando JDO se utiliza el lenguaje JDOQL, 
 * que es el query language para consultar datos persistentes. */
public class PersonaService {
	//Cuantos datos mostrara en la consulta
	private final static int FETCH_MAX_RESULTS = 10;
	
	/*
	//Metodo para insertar un dato
	public static void insertar(String nombres, String apellidos, String correo, String color){
	 //LLamamos a la clase que tendra la persistencia
	 final PersistenceManager pm = PMF.get().getPersistenceManager();
	 //Creamos nuestra variable del tipo tutorial
	 final Persona persona = new Persona(nombres, apellidos,correo,color);
	 //Y hacemos el dato que sea persistente
	 pm.makePersistent(persona);
	}
	*/
	
	//Para consultar una persona por color
	
	//Para consultar los pedidos
		@SuppressWarnings("unchecked")
		public static List<Pedido> ListaPedidos(){
		 final PersistenceManager pm = PMF.get().getPersistenceManager();
		 final Query query = pm.newQuery(Pedido.class);
		 query.setRange(0, FETCH_MAX_RESULTS);
		 return (List<Pedido>) query.execute();
		}
	
		@SuppressWarnings("unchecked")
		public static List<Empleado> personasXCodigo(String nombre){
		 final PersistenceManager pm = PMF.get().getPersistenceManager();
		 String query = " select from " +
		Empleado.class.getName()+
		 " where codicoe == '" +
		nombre + "'";
		 List<Empleado> personas = (List<Empleado>)pm.newQuery(query).execute();
		 return(personas);
		}	
		
		@SuppressWarnings("unchecked")
		public static boolean personaXIp(String ip){
			boolean encontrado=false;
			 final PersistenceManager pm = PMF.get().getPersistenceManager();
			 String query = " select from " +
			 Ips.class.getName() +
			 " where numeroip== '" +
			 ip +  "'";
			 List<Ips> personas = (List<Ips>)pm.newQuery(query).execute();
				for(Ips e:personas){
					if(e.getNumeroip().equals(ip)){
					encontrado=true;	
			
					}
				}
				return encontrado;
			}
		
		@SuppressWarnings("unchecked")
		public static void añadirIp(String ip){
		 final PersistenceManager pm = PMF.get().getPersistenceManager();
		Ips b=new Ips(ip);
		pm.makePersistent(b);
		
		}
		
		
		@SuppressWarnings("unchecked")
		public static List<Pedido> productoXCodigo(String nombre){
		 final PersistenceManager pm = PMF.get().getPersistenceManager();
		 String query = " select from " +
		Pedido.class.getName()+
		 " where codigo == '" +
		nombre + "'";
		 List<Pedido> personas = (List<Pedido>)pm.newQuery(query).execute();
		 return(personas);
		}
		
		
		
	//Para consulta todas las personas
	@SuppressWarnings("unchecked")
	public static List<Empleado> ListaEmpleados(){
	 final PersistenceManager pm = PMF.get().getPersistenceManager();
	 final Query query = pm.newQuery(Empleado.class);
	 query.setRange(0, FETCH_MAX_RESULTS);
	 return (List<Empleado>) query.execute();
	}
	
	@SuppressWarnings("unchecked")
	public static List<Postulante> getPostulantes(){
		 final PersistenceManager pm = PMF.get().getPersistenceManager();
		 final Query query = pm.newQuery(Postulante.class);
		 query.setRange(0, FETCH_MAX_RESULTS);
		 return (List<Postulante>) query.execute();
		}
	
	@SuppressWarnings("unchecked")
	public static boolean BuscarEmpleado(String codigo,String contraseña){
		boolean encontrado=false;
		 final PersistenceManager pm = PMF.get().getPersistenceManager();
		 String query = " select from " +
		 Empleado.class.getName() +
		 " where codicoe == '" +
		 codigo +  "'";
		 List<Empleado> personas = (List<Empleado>)pm.newQuery(query).execute();
			for(Empleado e:personas){
				if(e.getCodicoe().equals(codigo)&&e.getContraseña().equals(contraseña)){
				encontrado=true;	
		
				}
				
			}
				
			
		 return(encontrado);
		}
}