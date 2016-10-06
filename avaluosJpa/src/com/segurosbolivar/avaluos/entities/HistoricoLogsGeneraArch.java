package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;


/**
 * The persistent class for the PGB_HIST_LOGS_GENERA_ARCH database table.
 * 
 */
@Entity
@Table(name="PGB_HIST_LOGS_GENERA_ARCH")
public class HistoricoLogsGeneraArch implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(name="CODIGO_ERROR")
	private BigDecimal codigoError;

	@Column(name="DESC_ERROR")
	private String descError;

	private String enviado;

	private String estado;

    @Temporal( TemporalType.DATE)
	@Column(name="FECHA_DESDE")
	private Date fechaDesde;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_FIN_CREACION")
	private Date fechaFinCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_HASTA")
	private Date fechaHasta;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_INICIO_CREACION")
	private Date fechaInicioCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION")
	private Date fechaTransaccion;

	@Id
	@SequenceGenerator(name="PGB_HIST_LOGS_GENERA_ARCH_IDHISTLOGSGENERAARCH_GENERATOR", sequenceName="SEQ_PGB_HIST_LOGS_GENERA_ARCH")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_HIST_LOGS_GENERA_ARCH_IDHISTLOGSGENERAARCH_GENERATOR")
	@Column(name="ID_HIST_LOGS_GENERA_ARCH")
	private BigDecimal idHistLogsGeneraArch;

	@Column(name="ID_LOG_ARCHIVOS")
	private BigDecimal idLogArchivos;

	@Column(name="LINK_DESCARGA")
	private String linkDescarga;

	@Column(name="NOMBRE_ARCHIVO")
	private String nombreArchivo;

	@Column(name="NOMBRE_PLANO")
	private String nombrePlano;

	@Column(name="USUARIO_CREACION")
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION")
	private String usuarioTransaccion;

    public HistoricoLogsGeneraArch() {
    }

	public BigDecimal getCodigoError() {
		return this.codigoError;
	}

	public void setCodigoError(BigDecimal codigoError) {
		this.codigoError = codigoError;
	}

	public String getDescError() {
		return this.descError;
	}

	public void setDescError(String descError) {
		this.descError = descError;
	}

	public String getEnviado() {
		return this.enviado;
	}

	public void setEnviado(String enviado) {
		this.enviado = enviado;
	}

	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Date getFechaDesde() {
		return this.fechaDesde;
	}

	public void setFechaDesde(Date fechaDesde) {
		this.fechaDesde = fechaDesde;
	}

	public Date getFechaFinCreacion() {
		return this.fechaFinCreacion;
	}

	public void setFechaFinCreacion(Date fechaFinCreacion) {
		this.fechaFinCreacion = fechaFinCreacion;
	}

	public Date getFechaHasta() {
		return this.fechaHasta;
	}

	public void setFechaHasta(Date fechaHasta) {
		this.fechaHasta = fechaHasta;
	}

	public Date getFechaInicioCreacion() {
		return this.fechaInicioCreacion;
	}

	public void setFechaInicioCreacion(Date fechaInicioCreacion) {
		this.fechaInicioCreacion = fechaInicioCreacion;
	}

	public Date getFechaTransaccion() {
		return this.fechaTransaccion;
	}

	public void setFechaTransaccion(Date fechaTransaccion) {
		this.fechaTransaccion = fechaTransaccion;
	}

	public BigDecimal getIdHistLogsGeneraArch() {
		return this.idHistLogsGeneraArch;
	}

	public void setIdHistLogsGeneraArch(BigDecimal idHistLogsGeneraArch) {
		this.idHistLogsGeneraArch = idHistLogsGeneraArch;
	}

	public BigDecimal getIdLogArchivos() {
		return this.idLogArchivos;
	}

	public void setIdLogArchivos(BigDecimal idLogArchivos) {
		this.idLogArchivos = idLogArchivos;
	}

	public String getLinkDescarga() {
		return this.linkDescarga;
	}

	public void setLinkDescarga(String linkDescarga) {
		this.linkDescarga = linkDescarga;
	}

	public String getNombreArchivo() {
		return this.nombreArchivo;
	}

	public void setNombreArchivo(String nombreArchivo) {
		this.nombreArchivo = nombreArchivo;
	}

	public String getNombrePlano() {
		return this.nombrePlano;
	}

	public void setNombrePlano(String nombrePlano) {
		this.nombrePlano = nombrePlano;
	}

	public String getUsuarioCreacion() {
		return this.usuarioCreacion;
	}

	public void setUsuarioCreacion(String usuarioCreacion) {
		this.usuarioCreacion = usuarioCreacion;
	}

	public String getUsuarioTransaccion() {
		return this.usuarioTransaccion;
	}

	public void setUsuarioTransaccion(String usuarioTransaccion) {
		this.usuarioTransaccion = usuarioTransaccion;
	}

}