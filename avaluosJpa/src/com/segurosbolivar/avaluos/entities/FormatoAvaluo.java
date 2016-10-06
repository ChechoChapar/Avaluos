package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_FORMATO_AVALUO database table.
 * 
 */
@Entity
@Table(name="PGB_FORMATO_AVALUO")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class FormatoAvaluo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_FORMATO_AVALUO_IDFORMATOAVALUO_GENERATOR", sequenceName="SEQ_PGB_FORMATO_AVALUO", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_FORMATO_AVALUO_IDFORMATOAVALUO_GENERATOR")
	@Column(name="ID_FORMATO_AVALUO", unique=true, nullable=false, precision=5)
	private BigDecimal idFormatoAvaluo;

	@Column(name="DESCRICPION", nullable=false, length=250)
	private String descripcion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_ACTUALIZACION", nullable=false)
	private Date fechaActualizacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;

	//uni-directional many-to-one association to Archivo
	@ManyToOne(fetch=FetchType.LAZY, cascade=CascadeType.PERSIST)
	@JoinColumn(name="ID_ARCHIVO", nullable=false)
	private Archivo formatoExcel;

    public FormatoAvaluo() {
    }

	public BigDecimal getIdFormatoAvaluo() {
		return this.idFormatoAvaluo;
	}

	public void setIdFormatoAvaluo(BigDecimal idFormatoAvaluo) {
		this.idFormatoAvaluo = idFormatoAvaluo;
	}

	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Date getFechaActualizacion() {
		return this.fechaActualizacion;
	}

	public void setFechaActualizacion(Date fechaActualizacion) {
		this.fechaActualizacion = fechaActualizacion;
	}

	public Date getFechaTransaccion() {
		return this.fechaTransaccion;
	}

	public void setFechaTransaccion(Date fechaTransaccion) {
		this.fechaTransaccion = fechaTransaccion;
	}

	public String getUsuarioTransaccion() {
		return this.usuarioTransaccion;
	}

	public void setUsuarioTransaccion(String usuarioTransaccion) {
		this.usuarioTransaccion = usuarioTransaccion;
	}

	public Archivo getFormatoExcel() {
		return this.formatoExcel;
	}

	public void setFormatoExcel(Archivo formatoExcel) {
		this.formatoExcel = formatoExcel;
	}
	
}