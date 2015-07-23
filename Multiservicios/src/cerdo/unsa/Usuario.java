package cerdo.unsa;

import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;

import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.Inheritance;
import javax.jdo.annotations.InheritanceStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
@Inheritance(strategy=InheritanceStrategy.NEW_TABLE)
public class Usuario{
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.SEQUENCE)
	private Long id;
	
	@Persistent
	private String name;
	
	@Persistent
	private String email;
	
	@Persistent
	private String comentario;
	
	@Persistent
	private int year;
	
	@Persistent
	private String month;
	
	@Persistent
	private int day;
	
	@Persistent
	private int hour;
	
	@Persistent
	private int minute;

	public Usuario(String name, String email, String comentario) {
		super();
		this.name = name;
		this.email = email;
		this.comentario = comentario;
		TimeZone.setDefault(TimeZone.getTimeZone("America/Lima"));
		Calendar fecha = new GregorianCalendar();
		year = fecha.get(Calendar.YEAR);
	    int mes = fecha.get(Calendar.MONTH);
	    String[] meses = {"Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Setiembre","Octubre","Noviembre","Diciembre"};
		month = "";
		for (int i=0; i<meses.length; i++){
			if (mes == i)
				month = meses[i];
		}
	    day = fecha.get(Calendar.DAY_OF_MONTH);
	    hour = fecha.get(Calendar.HOUR_OF_DAY);
	    minute = fecha.get(Calendar.MINUTE);
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public int getHour() {
		return hour;
	}

	public void setHour(int hour) {
		this.hour = hour;
	}

	public int getMinute() {
		return minute;
	}

	public void setMinute(int minute) {
		this.minute = minute;
	}

	public String getId() {
		return Long.toString(id);
	}

	public void setId(String idPersona) {
		Long clave =Long.parseLong(idPersona);
		this.id = clave;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	@Override
	public String toString() {
		return "Usuario [name=" + name + ", email=" + email + ", comentario="
				+ comentario + "]";
	}
	
}
