package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_CIUDADES database table.
 * 
 */
@Entity
@Table(name="PGB_CIUDADES")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class Ciudad implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_CIUDADES_IDCIUDAD_GENERATOR", sequenceName="SEQ_PGB_CIUDADES")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_CIUDADES_IDCIUDAD_GENERATOR")
	@Column(name="ID_CIUDAD")
	private BigDecimal idCiudad;

	private String ciudad;

	@Column(name="COD_ASOBANCARIA")
	private BigDecimal codAsobancaria;

	@Column(name="COD_DANE")
	private BigDecimal codDane;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION")
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION")
	private Date fechaTransaccion;

	@Column(name="USUARIO_CREACION")
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION")
	private String usuarioTransaccion;

	//bi-directional many-to-one association to Departamento
	@ManyToOne
	@JoinColumn(name="ID_DEPARTAMENTO")
	private Departamento departamento;

    public Ciudad() {
    }

	public BigDecimal getIdCiudad() {
		return this.idCiudad;
	}

	public void setIdCiudad(BigDecimal idCiudad) {
		this.idCiudad = idCiudad;
	}

	public String getCiudad() {
		return this.ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public BigDecimal getCodAsobancaria() {
		return this.codAsobancaria;
	}

	public void setCodAsobancaria(BigDecimal codAsobancaria) {
		this.codAsobancaria = codAsobancaria;
	}

	public BigDecimal getCodDane() {
		return this.codDane;
	}

	public void setCodDane(BigDecimal codDane) {
		this.codDane = codDane;
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

	public Departamento getDepartamento() {
		return this.departamento;
	}

	public void setDepartamento(Departamento departamento) {
		this.departamento = departamento;
	}
	
}