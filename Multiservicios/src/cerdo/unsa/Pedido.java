package cerdo.unsa;

import java.util.*;


import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Pedido {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String nombre;
	
	@Persistent
	private long identificacion;
	
	@Persistent
	private String direccion;
	
	@Persistent
	private long telefono;
	
	@Persistent
	private String fechaEmision;
	
	@Persistent
	private String fechaRecojo;
	
	@Persistent
	private ArrayList<Carne> carnes;
	
	@Persistent
	private ArrayList<Embutido> embutidos;
	
	@Persistent
	private double precioCarnes;
	
	@Persistent
	private double precioEmbutidos;
	
	@Persistent
	private String formEn;
	
	@Persistent
	private String hora;
	
	@Persistent
	private String destino;
	
	@Persistent
	private String num;
	
	@Persistent
	private double precioTotal;
	
	@Persistent
	private String estado;

	public Pedido(String name, long ide, String address, long phone, String date,String formEn,String hora, String destino, String num, String estado) {
	
		nombre = name;
		identificacion = ide;
		direccion = address;
		telefono = phone;
		fechaEmision = fechaEm();
		fechaRecojo = date;
		this.formEn = formEn;
		this.hora= hora;
		this.destino=destino;
		this.num = num;
		this.estado=estado;
	}
	public Pedido(String name, long ide, String address, long phone, String date, ArrayList<Carne> c, ArrayList<Embutido> emb, double pc, double pe, String formEn, String hora, String destino, String num, double ptotal, String estado){
		this( name, ide, address, phone, date, formEn, hora, destino, num, estado);
		if (c != null && pc != 0.0){
			carnes = c;
			precioCarnes = pc;
		}
		if (emb != null && pe != 0.0){
			embutidos = emb;
			precioEmbutidos = pe;
		}
		precioTotal = ptotal;
	}
	
	public double getPrecioTotal() {
		return precioTotal;
	}
	public void setPrecioTotal(double precioTotal) {
		this.precioTotal = precioTotal;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getFechaEmision() {
		return fechaEmision;
	}

	public void setFechaEmision(String fechaEmision) {
		this.fechaEmision = fechaEmision;
	}

	public double getPrecioCarnes() {
		return precioCarnes;
	}

	public void setPrecioCarnes(double precioCarnes) {
		this.precioCarnes = precioCarnes;
	}

	public double getPrecioEmbutidos() {
		return precioEmbutidos;
	}

	public void setPrecioEmbutidos(double precioEmbutidos) {
		this.precioEmbutidos = precioEmbutidos;
	}

	public ArrayList<Carne> getCarnes() {
		return carnes;
	}

	public void setCarnes(ArrayList<Carne> carnes) {
		this.carnes = carnes;
	}

	public ArrayList<Embutido> getEmbutidos() {
		return embutidos;
	}

	public void setEmbutidos(ArrayList<Embutido> embutidos) {
		this.embutidos = embutidos;
	}

	public Key getKey() {
		return key;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public long getIdentificacion() {
		return identificacion;
	}

	public void setIdentificacion(long identificacion) {
		this.identificacion = identificacion;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public long getTelefono() {
		return telefono;
	}

	public void setTelefono(long telefono) {
		this.telefono = telefono;
	}

	public String getFechaRecojo() {
		return fechaRecojo;
	}

	public void setFechaRecojo(String fecha) {
		this.fechaRecojo = fecha;
	}
	
	public String fechaEm(){
		TimeZone.setDefault(TimeZone.getTimeZone("America/Lima"));
		Calendar fecha = new GregorianCalendar();
		int año = fecha.get(Calendar.YEAR);
	    int mes = fecha.get(Calendar.MONTH);
	    int dia = fecha.get(Calendar.DAY_OF_MONTH);
	    String fechaEmision = dia+"/"+(mes+1)+"/"+año;
	    return fechaEmision;
	}
	

	public String getFormEn() {
		return formEn;
	}

	public void setFormEn(String formEn) {
		this.formEn = formEn;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public String getDestino() {
		return destino;
	}

	public void setDestino(String destino) {
		this.destino = destino;
	}

	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	@Override
	public String toString() {
		return "Pedido [nombre=" + nombre
				+ ", identificacion=" + identificacion + ", direccion="
				+ direccion + ", telefono=" + telefono + ", fechaEmision="
				+ fechaEmision + ", fechaRecojo=" + fechaRecojo + ", carnes="
				+ carnes + ", embutidos=" + embutidos + ", precioCarnes="
				+ precioCarnes + ", precioEmbutidos=" + precioEmbutidos
				+ ", formEn=" + formEn + ", hora=" + hora + ", destino="
				+ destino + ", num=" + num + ", precioTotal=" + precioTotal
				+ "]";
	}
	
}