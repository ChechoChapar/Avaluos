package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_HORAS_CORTE_ARCHIVO database table.
 * 
 */
@Entity
@Table(name="PGB_HORAS_CORTE_ARCHIVO")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class HorasCorteArchivo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_HORAS_CORTE_ARCHIVO_IDHORASCORTEARCHIVO_GENERATOR", sequenceName="SEQ_PGB_HORAS_CORTE_ARCHIVO", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_HORAS_CORTE_ARCHIVO_IDHORASCORTEARCHIVO_GENERATOR")
	@Column(name="ID_HORAS_CORTE_ARCHIVO")
	private BigDecimal idHorasCorteArchivo;

	private String estado;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION")
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION")
	private Date fechaTransaccion;

	@Column(name="HORA_CORTE")
	private BigDecimal horaCorte;

	@Column(name="MINUTOS_CORTE")
	private BigDecimal minutosCorte;

	@Column(name="USUARIO_CREACION")
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION")
	private String usuarioTransaccion;

    public HorasCorteArchivo(String estado, BigDecimal horaCorte, BigDecimal minutosCorte) {
	    super();
	    this.estado = estado;
	    this.horaCorte = horaCorte;
	    this.minutosCorte = minutosCorte;
	}

    public HorasCorteArchivo() {
    }

	public BigDecimal getIdHorasCorteArchivo() {
		return this.idHorasCorteArchivo;
	}

	public void setIdHorasCorteArchivo(BigDecimal idHorasCorteArchivo) {
		this.idHorasCorteArchivo = idHorasCorteArchivo;
	}

	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
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

	public BigDecimal getHoraCorte() {
		return this.horaCorte;
	}

	public void setHoraCorte(BigDecimal horaCorte) {
		this.horaCorte = horaCorte;
	}

	public BigDecimal getMinutosCorte() {
		return this.minutosCorte;
	}

	public void setMinutosCorte(BigDecimal minutosCorte) {
		this.minutosCorte = minutosCorte;
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