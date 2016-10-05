package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_LOGS_GENERA_ARCHIVOS database table.
 * 
 */
@Entity
@Table(name="PGB_LOGS_GENERA_ARCHIVOS")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class LogsGeneraArchivo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_LOGS_GENERA_ARCHIVOS_IDLOGARCHIVOS_GENERATOR", sequenceName="SEQ_PGB_LOGS_GENERA_ARCHIVOS", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_LOGS_GENERA_ARCHIVOS_IDLOGARCHIVOS_GENERATOR")
	@Column(name="ID_LOG_ARCHIVOS", unique=true, nullable=false, precision=22)
	private BigDecimal idLogArchivos;

	@Column(name="CODIGO_ERROR", precision=22)
	private BigDecimal codigoError;

	@Column(name="DESC_ERROR", length=2000)
	private String descripcionError;

	@Column(length=1)
	private String enviado;

	@Column(length=1)
	private String estado;

    @Temporal( TemporalType.DATE)
	@Column(name="FECHA_DESDE")
	private Date fechaDesde;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_FIN_CREACION")
	private Date fechaFinCreacion;

    @Temporal( TemporalType.DATE)
	@Column(name="FECHA_HASTA")
	private Date fechaHasta;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_INICIO_CREACION")
	private Date fechaInicioCreacion;

	@Column(name="LINK_DESCARGA", length=500)
	private String linkDescarga;

	@Column(name="NOMBRE_ARCHIVO", length=200)
	private String nombreArchivo;

	@Column(name="USUARIO_CREACION", length=15)
	private String usuarioCreacion;
	
	@Column(name="NOMBRE_PLANO", length=200)
	private String nombrePlano;
	
	@Column(name="USUARIO_TRANSACCION", length=15)
	private String usuarioTransaccion;
	
    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION")
	private Date fechaTransaccion;
	       
	//bi-directional many-to-one association to PgbAvaluo
	@OneToMany(mappedBy="logsGeneraArchivo")
	private List<Avaluo> avaluos;

	@Transient
	private String cantReg;
	
    public LogsGeneraArchivo() {
    }

	public BigDecimal getIdLogArchivos() {
		return this.idLogArchivos;
	}

	public void setIdLogArchivos(BigDecimal idLogArchivos) {
		this.idLogArchivos = idLogArchivos;
	}

	public BigDecimal getCodigoError() {
		return this.codigoError;
	}

	public void setCodigoError(BigDecimal codigoError) {
		this.codigoError = codigoError;
	}

	public String getDescripcionError() {
		return this.descripcionError;
	}

	public void setDescripcionError(String descripcionError) {
		this.descripcionError = descripcionError;
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

	public String getUsuarioCreacion() {
		return this.usuarioCreacion;
	}

	public void setUsuarioCreacion(String usuarioCreacion) {
		this.usuarioCreacion = usuarioCreacion;
	}

	public List<Avaluo> getAvaluos() {
	    return avaluos;
	}

	public void setAvaluos(List<Avaluo> avaluos) {
	    this.avaluos = avaluos;
	}

	public String getNombrePlano() {
		return nombrePlano;
	}

	public void setNombrePlano(String nombrePlano) {
		this.nombrePlano = nombrePlano;
	}

	public String getUsuarioTransaccion() {
		return this.usuarioTransaccion;
	}

	public void setUsuarioTransaccion(String usuarioTransaccion) {
		this.usuarioTransaccion = usuarioTransaccion;
	}
	
	public Date getFechaTransaccion() {
		return this.fechaTransaccion;
	}

	public void setFechaTransaccion(Date fechaTransaccion) {
		this.fechaTransaccion = fechaTransaccion;
	}

	public void setCantReg(String cantReg) {
		this.cantReg = cantReg;
	}

	public String getCantReg() {
		return cantReg;
	}
	
}