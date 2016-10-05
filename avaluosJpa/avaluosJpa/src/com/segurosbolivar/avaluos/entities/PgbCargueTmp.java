package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.CACHE;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_CARGUE_TMP database table.
 * 
 */
@Entity
@Table(name="PGB_CARGUE_TMP")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class PgbCargueTmp implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_CARGUE_TMP_CONSECUTIVOTMP_GENERATOR", sequenceName="SEQ_PGB_CARGUE_TMP", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_CARGUE_TMP_CONSECUTIVOTMP_GENERATOR")
	@Column(name="CONSECUTIVO_TMP")
	private long consecutivoTmp;
	
	@Lob
	@Column(name="CONTENIDO_LINEA_PLANO")
	private String contenidoLineaPlano;

	@Column(name="ESTADO_CARGUE")
	private String estadoCargue;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION")
	private Date fechaTransaccion;

	@Column(name="LINEA_PLANO")
	private BigDecimal lineaPlano;

	@Column(name="NUMERO_REF_CARGUE")
	private BigDecimal numeroRefCargue;

	@Column(name="TIPO_CARGUE")
	private String tipoCargue;

	@Column(name="USUARIO_TRANSACCION")
	private String usuarioTransaccion;

	@Column(name="MENSAJE_ERROR")
	private String mensajeError;

	@Column(name="NOMBRE_ARCHIVO")
	private String nombreArchivo;
	
	@Column(name="CONSECUTIVO_BATCH", precision=5)
	private BigDecimal consecutivoBatch;
	
	@Column(name="TIPO_PROYECTO", precision=5)
	private BigDecimal tipoProyecto;
	
	
    public PgbCargueTmp() {
    }

	public long getConsecutivoTmp() {
		return this.consecutivoTmp;
	}

	public void setConsecutivoTmp(long consecutivoTmp) {
		this.consecutivoTmp = consecutivoTmp;
	}

	public String getContenidoLineaPlano() {
		return this.contenidoLineaPlano;
	}

	public void setContenidoLineaPlano(String contenidoLineaPlano) {
		this.contenidoLineaPlano = contenidoLineaPlano;
	}

	public String getEstadoCargue() {
		return this.estadoCargue;
	}

	public void setEstadoCargue(String estadoCargue) {
		this.estadoCargue = estadoCargue;
	}

	public Date getFechaTransaccion() {
		return this.fechaTransaccion;
	}

	public void setFechaTransaccion(Date fechaTransaccion) {
		this.fechaTransaccion = fechaTransaccion;
	}

	public BigDecimal getLineaPlano() {
		return this.lineaPlano;
	}

	public void setLineaPlano(BigDecimal lineaPlano) {
		this.lineaPlano = lineaPlano;
	}

	public BigDecimal getNumeroRefCargue() {
		return this.numeroRefCargue;
	}

	public void setNumeroRefCargue(BigDecimal numeroRefCargue) {
		this.numeroRefCargue = numeroRefCargue;
	}

	public String getTipoCargue() {
		return this.tipoCargue;
	}

	public void setTipoCargue(String tipoCargue) {
		this.tipoCargue = tipoCargue;
	}

	public String getUsuarioTransaccion() {
		return this.usuarioTransaccion;
	}

	public void setUsuarioTransaccion(String usuarioTransaccion) {
		this.usuarioTransaccion = usuarioTransaccion;
	}

	public String getMensajeError() {
		return mensajeError;
	}

	public void setMensajeError(String mensajeError) {
		this.mensajeError = mensajeError;
	}

	public String getNombreArchivo() {
		return nombreArchivo;
	}

	public void setNombreArchivo(String nombreArchivo) {
		this.nombreArchivo = nombreArchivo;
	}

	public BigDecimal getConsecutivoBatch() {
		return consecutivoBatch;
	}

	public void setConsecutivoBatch(BigDecimal consecutivoBatch) {
		this.consecutivoBatch = consecutivoBatch;
	}

	public BigDecimal getTipoProyecto() {
		return tipoProyecto;
	}

	public void setTipoProyecto(BigDecimal tipoProyecto) {
		this.tipoProyecto = tipoProyecto;
	}
	
}