package cerdo.unsa;
import javax.jdo.annotations.*;
import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Embutido{
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String nombre;
	
	@Persistent
	private int peso;
	
	@Persistent
	private String unidad;
	
	public Embutido(String nombre, int peso, String unidad){
		this.nombre = nombre;
		this.peso = peso;
		this.unidad = unidad;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getPeso() {
		return peso;
	}

	public void setPeso(int peso) {
		this.peso = peso;
	}

	public String getUnidad() {
		return unidad;
	}

	public void setUnidad(String unidad) {
		this.unidad = unidad;
	}

	@Override
	public String toString() {
		return "Embutidos [nombre=" + nombre + ", peso=" + peso + ", unidad=" + unidad + "]";
	}
		
}


