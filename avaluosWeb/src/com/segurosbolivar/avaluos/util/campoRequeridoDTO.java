package com.segurosbolivar.avaluos.util;

public class campoRequeridoDTO {

	private String nombreComponente;
	private String nombretablaBD;
	private String nombrecampoBD;
	private String categoriaInmueble;
	private boolean requerido;

	public String getNombreComponente() {
		return nombreComponente;
	}
	public void setNombreComponente(String nombreComponente) {
		this.nombreComponente = nombreComponente;
	}	
	public String getNombretablaBD() {
		return nombretablaBD;
	}
	public void setNombretablaBD(String nombretablaBD) {
		this.nombretablaBD = nombretablaBD;
	}
	public String getNombrecampoBD() {
		return nombrecampoBD;
	}
	public void setNombrecampoBD(String nombrecampoBD) {
		this.nombrecampoBD = nombrecampoBD;
	}
	public String getCategoriaInmueble() {
		return categoriaInmueble;
	}
	public void setCategoriaInmueble(String categoriaInmueble) {
		this.categoriaInmueble = categoriaInmueble;
	}
	public boolean isRequerido() {
		return requerido;
	}
	public void setRequerido(boolean requerido) {
		this.requerido = requerido;
	}	
}
