package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_ALARMAS database table.
 * 
 */
@javax.persistence.Entity
@Table(name="PGB_ALARMAS")
@NamedQueries({@NamedQuery(name = "getAlarmas", query = "select a from Alarma a"),@NamedQuery(name = "getDescAlarma", query = "select a from Alarma a where a.fechaCreacion = (select MAX(b.fechaCreacion) from Alarma b)")})
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class Alarma implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_ALARMAS_IDALARMA_GENERATOR", sequenceName="SEQ_PGB_ALARMAS" , allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_ALARMAS_IDALARMA_GENERATOR")
	@Column(name="ID_ALARMA", unique=true, nullable=false, precision=3)
	private BigDecimal idAlarma;

	@Column(name="DESC_ALERTA", nullable=false, length=250)
	private String descripcionAlerta;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION", nullable=false)
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="NUM_DIAS", nullable=false, precision=2)
	private BigDecimal numDias;

	@Column(name="USUARIO_CREACION", nullable=false, length=15)
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;

    public Alarma() {
    }

	public BigDecimal getIdAlarma() {
		return this.idAlarma;
	}

	public void setIdAlarma(BigDecimal idAlarma) {
		this.idAlarma = idAlarma;
	}

	public String getDescripcionAlerta() {
		return this.descripcionAlerta;
	}

	public void setDescripcionAlerta(String descripcionAlerta) {
		this.descripcionAlerta = descripcionAlerta;
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

	public BigDecimal getNumDias() {
		return this.numDias;
	}

	public void setNumDias(BigDecimal numDias) {
		this.numDias = numDias;
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