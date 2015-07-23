package cerdo.unsa;
import javax.jdo.annotations.*;
import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class NumeroBoleta{
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private long contador = 20150001;
	
	public NumeroBoleta(){
		
	}

	public Key getKey() {
		return key;
	}

	public long getContador() {
		return contador;
	}

	public void setContador(long num) {
		contador = contador + num;
	}
	
}




