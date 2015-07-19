package cerdo.unsa;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.jdo.annotations.IdGeneratorStrategy;

import com.google.appengine.api.datastore.Key;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class Entregado{
	@Persistent
	private String codigop;

	public Entregado(String codigop) {
		super();
		this.codigop = codigop;
	}

	public String getCodigop() {
		return codigop;
	}

	public void setCodigop(String codigop) {
		this.codigop = codigop;
	}
	
}
