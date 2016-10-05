package com.segurosbolivar.avaluos.daos;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Objeto de acceso a la estructura de filtros de la consulta de Históricos de Avalúos
 * 
 * @author Seguros Bolivar
 * @version 1.0
 */

public class HistoricoAuxDao {
	
	public String tipoDocumento;
	public String numeroIdentificacion;
	public String nombreSolicitante;
	public Date fechaAvaluoDesde;
	public Date fechaAvaluoHasta;
	public BigDecimal idDepartamento;
	public BigDecimal idCiudad;
	public String direccionInmueble;	
	public String matriculaInmobiliaria;
	public BigDecimal estadoAvaluo;
	public Date fechaCreacionDesde;
	public Date fechaCreacionHasta;	
	public Date fechaTransaccionDesde;
	public Date fechaTransaccionHasta;
	public String usuarioAprueba;
	public String usuarioTransaccion;	
	
	
	public String getTipoDocumento() {
		return tipoDocumento;
	}

	public void setTipoDocumento(String tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}

	public String getNumeroIdentificacion() {
		return numeroIdentificacion;
	}

	public void setNumeroIdentificacion(String numeroIdentificacion) {
		this.numeroIdentificacion = numeroIdentificacion;
	}

	public String getNombreSolicitante() {
		return nombreSolicitante;
	}

	public void setNombreSolicitante(String nombreSolicitante) {
		this.nombreSolicitante = nombreSolicitante;
	}

	public Date getFechaAvaluoDesde() {
		return fechaAvaluoDesde;
	}

	public void setFechaAvaluoDesde(Date fechaAvaluoDesde) {
		this.fechaAvaluoDesde = fechaAvaluoDesde;
	}

	public Date getFechaAvaluoHasta() {
		return fechaAvaluoHasta;
	}

	public void setFechaAvaluoHasta(Date fechaAvaluoHasta) {
		this.fechaAvaluoHasta = fechaAvaluoHasta;
	}

	public BigDecimal getIdDepartamento() {
		return idDepartamento;
	}

	public void setIdDepartamento(BigDecimal idDepartamento) {
		this.idDepartamento = idDepartamento;
	}

	public BigDecimal getIdCiudad() {
		return idCiudad;
	}

	public void setIdCiudad(BigDecimal idCiudad) {
		this.idCiudad = idCiudad;
	}

	public String getDireccionInmueble() {
		return direccionInmueble;
	}

	public void setDireccionInmueble(String direccionInmueble) {
		this.direccionInmueble = direccionInmueble;
	}

	public BigDecimal getEstadoAvaluo() {
		return estadoAvaluo;
	}

	public void setEstadoAvaluo(BigDecimal estadoAvaluo) {
		this.estadoAvaluo = estadoAvaluo;
	}

	public Date getFechaCreacionDesde() {
		return fechaCreacionDesde;
	}

	public void setFechaCreacionDesde(Date fechaCreacionDesde) {
		this.fechaCreacionDesde = fechaCreacionDesde;
	}

	public Date getFechaCreacionHasta() {
		return fechaCreacionHasta;
	}

	public void setFechaCreacionHasta(Date fechaCreacionHasta) {
		this.fechaCreacionHasta = fechaCreacionHasta;
	}

	public Date getFechaTransaccionDesde() {
		return fechaTransaccionDesde;
	}

	public void setFechaTransaccionDesde(Date fechaTransaccionDesde) {
		this.fechaTransaccionDesde = fechaTransaccionDesde;
	}

	public Date getFechaTransaccionHasta() {
		return fechaTransaccionHasta;
	}

	public void setFechaTransaccionHasta(Date fechaTransaccionHasta) {
		this.fechaTransaccionHasta = fechaTransaccionHasta;
	}

	public String getUsuarioAprueba() {
		return usuarioAprueba;
	}

	public void setUsuarioAprueba(String usuarioAprueba) {
		this.usuarioAprueba = usuarioAprueba;
	}

	public String getUsuarioTransaccion() {
		return usuarioTransaccion;
	}

	public void setUsuarioTransaccion(String usuarioTransaccion) {
		this.usuarioTransaccion = usuarioTransaccion;
	}

	public String getMatriculaInmobiliaria() {
		return matriculaInmobiliaria;
	}

	public void setMatriculaInmobiliaria(String matriculaInmobiliaria) {
		this.matriculaInmobiliaria = matriculaInmobiliaria;
	}

}
