package cerdo.unsa;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

import cerdo.unsa.PMF;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;

@SuppressWarnings("serial")
public class Upload extends HttpServlet {
    private BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
  
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {
    	HttpSession postulante= req.getSession();
    	
        Map<String, List<BlobKey>> blobs = blobstoreService.getUploads(req);
        List<BlobKey> blobKeys = blobs.get("myFile");

        if (blobKeys == null || blobKeys.isEmpty()) {
            res.sendRedirect("/");
        } else {
        	String nombre =(String) postulante.getAttribute("nombre");
    		String apellido =(String) postulante.getAttribute("apellido");
    		String correo = (String) postulante.getAttribute("correo");
    		String telefono = (String) postulante.getAttribute("telefono");
    		String iden = (String) postulante.getAttribute("iden");
    		String fecha =(String) postulante.getAttribute("fecha");
    		String civil = (String) postulante.getAttribute("civil");
    		String direccion=(String) postulante.getAttribute("direccion");
    		String licencia =(String) postulante.getAttribute("licencia");
    		String situacion = (String) postulante.getAttribute("situacion");
    		String puesto =(String) postulante.getAttribute("puesto");
    		String salario= (String) postulante.getAttribute("salario");
    		
        	  Postulante post=new Postulante(nombre,apellido,correo,telefono,iden,fecha,civil,direccion,licencia,situacion,puesto,salario,"http://4-dot-multiservicios-1.appspot.com/serve?blob-key=" + blobKeys.get(0).getKeyString());
        	   BlobKey blobKey = new BlobKey( blobKeys.get(0).getKeyString());
        	  PersistenceManager pm = PMF.get().getPersistenceManager();
        		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/exitoso.jsp");
        		rd.forward(req, res);
  			try{
  				pm.makePersistent(post);
  				
  			}catch(Exception u){
  				System.out.println(u);
  			}finally{
  				pm.close();
  			}
         
        
          postulante.invalidate();
           
          
            
        }
    }
}
