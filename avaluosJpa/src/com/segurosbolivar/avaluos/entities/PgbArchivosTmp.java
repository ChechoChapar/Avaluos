package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_ARCHIVOS_TMP database table.
 * 
 */
@Entity
@Table(name="PGB_ARCHIVOS_TMP")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class PgbArchivosTmp implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_ARCHIVOS_TMP_IDARCHIVO_GENERATOR", sequenceName="SEQ_PGB_ARCHIVOS_TMP", allocationSize = 1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_ARCHIVOS_TMP_IDARCHIVO_GENERATOR")		
	@Column(name="ID_ARCHIVO", unique=true, nullable=false, precision=5)
	private BigDecimal idArchivo;

	@Column(name="CONSECUTIVO_BATCH", precision=5)
	private BigDecimal consecutivoBatch;

    @Lob()
	@Column(nullable=false)
	private byte[] contenido;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION", nullable=false)
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="NOMBRE_ARCHIVO", nullable=false, length=40)
	private String nombreArchivo;

	@Column(name="TAMANIO_ARCHIVO", precision=22)
	private BigDecimal tamanioArchivo;

	@Column(name="TIPO_ARCHIVO", precision=22)
	private BigDecimal tipoArchivo;

	@Column(name="USUARIO_CREACION", nullable=false, length=15)
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;

    public PgbArchivosTmp() {
    }

	public BigDecimal getIdArchivo() {
		return this.idArchivo;
	}

	public void setIdArchivo(BigDecimal idArchivo) {
		this.idArchivo = idArchivo;
	}

	public BigDecimal getConsecutivoBatch() {
		return this.consecutivoBatch;
	}

	public void setConsecutivoBatch(BigDecimal consecutivoBatch) {
		this.consecutivoBatch = consecutivoBatch;
	}

	public byte[] getContenido() {
		return this.contenido;
	}

	public void setContenido(byte[] contenido) {
		this.contenido = contenido;
	}

	public Date getFechaCreacion() {
		return this.fechaCreacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public Date getFechaTransaccion() {
		return this.fechaTransaccion;
	}

	public void setFechaTransaccion(Date fechaTransaccion) {
		this.fechaTransaccion = fechaTransaccion;
	}

	public String getNombreArchivo() {
		return this.nombreArchivo;
	}

	public void setNombreArchivo(String nombreArchivo) {
		this.nombreArchivo = nombreArchivo;
	}

	public BigDecimal getTamanioArchivo() {
		return this.tamanioArchivo;
	}

	public void setTamanioArchivo(BigDecimal tamanioArchivo) {
		this.tamanioArchivo = tamanioArchivo;
	}

	public BigDecimal getTipoArchivo() {
		return this.tipoArchivo;
	}

	public void setTipoArchivo(BigDecimal tipoArchivo) {
		this.tipoArchivo = tipoArchivo;
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