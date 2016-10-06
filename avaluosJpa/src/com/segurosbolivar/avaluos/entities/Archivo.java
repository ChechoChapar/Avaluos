package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import com.segurosbolivar.avaluos.util.UtilJpa;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the ARCHIVOS database table.
 * 
 */
@Entity
@Table(name="ARCHIVOS")
@NamedQuery(name = "getContenidoArchivoId", query = "select a.contenidoArchivo from Archivo a where a.idArchivo = :id")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class Archivo implements Serializable {
	private static final long serialVersionUID = 1L;

	//Dnino 17 Jul 2016 Se deshabilita validacion para tiempo de respuesta
	//@PrePersist
	protected void onCreate() throws Exception {
		BigDecimal max = UtilJpa.getMaxTableValue("ARCHIVOS","ID_ARCHIVO");
		if(idArchivo.compareTo(max)<1)
		{
			BigDecimal seqNew = UtilJpa.getAlterSequenceValueMaxTable(max,"SEQ_ARCHIVOS");
		   this.setIdArchivo(seqNew);
		}
	}
	
	@Id
	@SequenceGenerator(name="ARCHIVOS_IDARCHIVO_GENERATOR", sequenceName="SEQ_ARCHIVOS", allocationSize = 1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="ARCHIVOS_IDARCHIVO_GENERATOR")
	@Column(name="ID_ARCHIVO")
	private BigDecimal idArchivo;

    @Lob()
	@Column(name="CONTENIDO")
	private byte[] contenidoArchivo;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION")
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION")
	private Date fechaTransaccion;

	@Column(name="NOMBRE_ARCHIVO")
	private String nombreArchivo;

	@Column(name="TAMANIO_ARCHIVO")
	private BigDecimal tamanioArchivo;

	@Column(name="TIPO_ARCHIVO")
	private BigDecimal tipoArchivo;

	@Column(name="USUARIO_CREACION")
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION")
	private String usuarioTransaccion;
	
	@Transient
	private String descripcion;

    public Archivo() {
    }

	public BigDecimal getIdArchivo() {
		return this.idArchivo;
	}

	public void setIdArchivo(BigDecimal idArchivo) {
		this.idArchivo = idArchivo;
	}

	public byte[] getContenidoArchivo() {
		return this.contenidoArchivo;
	}

	public void setContenidoArchivo(byte[] contenidoArchivo) {
		this.contenidoArchivo = contenidoArchivo;
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

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Override
	public String toString() {
		return "Archivo [idArchivo=" + idArchivo + ", contenidoArchivo="
				+ Arrays.toString(contenidoArchivo) + ", fechaCreacion="
				+ fechaCreacion + ", fechaTransaccion=" + fechaTransaccion
				+ ", nombreArchivo=" + nombreArchivo + ", tamanioArchivo="
				+ tamanioArchivo + ", tipoArchivo=" + tipoArchivo
				+ ", usuarioCreacion=" + usuarioCreacion
				+ ", usuarioTransaccion=" + usuarioTransaccion
				+ ", descripcion=" + descripcion + "]";
	}
	
	

}