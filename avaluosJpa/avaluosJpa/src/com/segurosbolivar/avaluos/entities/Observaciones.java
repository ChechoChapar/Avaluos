package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import com.segurosbolivar.avaluos.util.UtilJpa;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_OBSERVACIONES database table.
 * 
 */
@Entity
@Table(name="PGB_OBSERVACIONES")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class Observaciones implements Serializable {
	private static final long serialVersionUID = 1L;

	
	//Dnino 17 Jul 2016 Se deshabilita validacion para tiempo de respuesta
	//@PrePersist
	protected void onCreate() throws Exception {
		BigDecimal max = UtilJpa.getMaxTableValue("PGB_OBSERVACIONES","ID_OBSERVACION");
		if(idObservacion.compareTo(max)<1)
		{
			BigDecimal seqNew = UtilJpa.getAlterSequenceValueMaxTable(max,"SEQ_PGB_OBSERVACIONES");
		   this.setIdObservacion(seqNew);
		}
	}
	
	@Id
	@SequenceGenerator(name="PGB_OBSERVACIONES_IDOBSERVACION_GENERATOR", sequenceName="SEQ_PGB_OBSERVACIONES", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_OBSERVACIONES_IDOBSERVACION_GENERATOR")
	@Column(name="ID_OBSERVACION", unique=true, nullable=false, precision=10)
	private BigDecimal idObservacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION", nullable=false)
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="T_DIRANEXOS", length=100)
	private String direccionAnexos;

	@Column(name="T_OBSERVAVALUO", length=2000)
	private String observacionAvaluo;

	@Column(name="T_OTRASDIR", length=100)
	private String otrasDirecciones;

	@Column(name="USUARIO_CREACION", nullable=false, length=15)
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;

	//bi-directional many-to-one association to Avaluo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_AVALUO", nullable=false)
	private Avaluo avaluo;

    public Observaciones() {
    }

	public BigDecimal getIdObservacion() {
		return this.idObservacion;
	}

	public void setIdObservacion(BigDecimal idObservacion) {
		this.idObservacion = idObservacion;
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

	public String getDireccionAnexos() {
		return this.direccionAnexos;
	}

	public void setDireccionAnexos(String direccionAnexos) {
		this.direccionAnexos = direccionAnexos;
	}

	public String getObservacionAvaluo() {
		return this.observacionAvaluo;
	}

	public void setObservacionAvaluo(String observacionAvaluo) {
		this.observacionAvaluo = observacionAvaluo;
	}

	public String getOtrasDirecciones() {
		return this.otrasDirecciones;
	}

	public void setOtrasDirecciones(String otrasDirecciones) {
		this.otrasDirecciones = otrasDirecciones;
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

	public Avaluo getAvaluo() {
		return this.avaluo;
	}

	public void setAvaluo(Avaluo avaluo) {
		this.avaluo = avaluo;
	}
	
}