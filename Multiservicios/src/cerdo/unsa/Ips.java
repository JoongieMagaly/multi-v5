package cerdo.unsa;
import java.util.*;
import javax.jdo.annotations.*;
import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Ips{
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String numeroip;

	public Ips(String numeroip) {
		this.numeroip = numeroip;
	}

	public String getNumeroip() {
		return numeroip;
	}

	public void setNumeroip(String numeroip) {
		this.numeroip = numeroip;
	}
	
}