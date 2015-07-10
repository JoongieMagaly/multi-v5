package cerdo.unsa;

import java.util.*;
import javax.jdo.annotations.*;
import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Carne{
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String nombre;
	
	@Persistent
	private ArrayList<String> forma;
	
	@Persistent
	private ArrayList<Integer> peso;
	
	@Persistent
	private ArrayList<String> unidad;
	
	public Carne(String nombre, ArrayList<String> forma, ArrayList<Integer> peso, ArrayList<String> unidad){
		this.nombre = nombre;
	    this.forma = forma;
	    this.peso = peso;
	    this.unidad = unidad;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public ArrayList<String> getForma() {
		return forma;
	}

	public void setForma(ArrayList<String> forma) {
		this.forma = forma;
	}

	public ArrayList<Integer> getPeso() {
		return peso;
	}

	public void setPeso(ArrayList<Integer> peso) {
		this.peso = peso;
	}

	public ArrayList<String> getUnidad() {
		return unidad;
	}

	public void setUnidad(ArrayList<String> unidad) {
		this.unidad = unidad;
	}

	public String array(ArrayList<String> array){
		String s="";
		for (int i=0; i<array.size();i++){
			s+=array.get(i)+" ";
		}
		return s;
	}
	
	public String array1(ArrayList<Integer> array){
		String s="";
		for (int i=0; i<array.size();i++){
			s+=array.get(i)+" ";
		}
		return s;
	}

	@Override
	public String toString() {
		return "Carne [nombre=" + nombre + ", forma=" + array(forma) + ", peso=" + array1(peso)
				+ ", unidad=" + array(unidad) + "]";
	}

}


