package cerdo.unsa;

import java.util.*;

import javax.jdo.annotations.*;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Control{
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String ip;
	
	@Persistent
	private String fecha;
	
	@Persistent
	private String hora;
	
	public Control(String ip){
		this.ip = ip;
		
		TimeZone.setDefault(TimeZone.getTimeZone("America/Lima"));
		Calendar f = new GregorianCalendar();
		int year = f.get(Calendar.YEAR);
	    int month = f.get(Calendar.MONTH);
	    int day = f.get(Calendar.DAY_OF_MONTH);
	    int hour = f.get(Calendar.HOUR_OF_DAY);
	    int minute = f.get(Calendar.MINUTE);
	    
	    this.fecha = day+"/"+(month+1)+"/"+year;
	    this.hora = hour+":"+minute;
	}

	public Key getKey() {
		return key;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}
	

}
