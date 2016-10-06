package com.segurosbolivar.avaluos.entities;


import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the PGB_BLOQ_LOGS_GENERA_ARCHIVOS database table.
 * 
 */
@Entity
@Table(name="PGB_BLOQ_LOGS_GENERA_ARCHIVOS")
public class PgbBloqLogsGeneraArchivo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_BLOQ_LOGS_GENERA_ARCHIVOS_IDGENERACIONPLANO_GENERATOR", sequenceName="SEQ_BLOQ_LOGS_GENERA_ARCHIVOS", allocationSize = 1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_BLOQ_LOGS_GENERA_ARCHIVOS_IDGENERACIONPLANO_GENERATOR")
	@Column(name="ID_GENERACION_PLANO")
	private long idGeneracionPlano;

	@Column(name="ESTADO_REGISTRO")
	private String estadoRegistro;

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

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION")
	private Date fechaTransaccion;

	@Column(name="USUARIO_CREACION")
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION")
	private String usuarioTransaccion;

    public PgbBloqLogsGeneraArchivo() {
    }

	public long getIdGeneracionPlano() {
		return this.idGeneracionPlano;
	}

	public void setIdGeneracionPlano(long idGeneracionPlano) {
		this.idGeneracionPlano = idGeneracionPlano;
	}

	public String getEstadoRegistro() {
		return this.estadoRegistro;
	}

	public void setEstadoRegistro(String estadoRegistro) {
		this.estadoRegistro = estadoRegistro;
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