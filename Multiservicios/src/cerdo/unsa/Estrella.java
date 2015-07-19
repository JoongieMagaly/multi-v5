package cerdo.unsa;
import java.util.*;
import javax.jdo.annotations.*;
import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Estrella{
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private static int a=0;

	public Estrella() {

	}

	public static int getA() {
		return a;
	}

	public static void  setA(int n) {
		a = a+n;
	}
	
	
}
