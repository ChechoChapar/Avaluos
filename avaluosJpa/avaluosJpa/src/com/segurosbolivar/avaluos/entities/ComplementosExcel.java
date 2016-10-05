package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_COMPLEMENTOS_EXCEL database table.
 * 
 */
@Entity
@Table(name="PGB_COMPLEMENTOS_EXCEL")
@NamedQuery(name = "getComplementos", query = "select c from ComplementosExcel c")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class ComplementosExcel implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_COMPLEMENTOS_EXCEL_IDCOMPLEMENTOEXCEL_GENERATOR", sequenceName="SEQ_PGB_COMPLEMENTOS_EXCEL" ,allocationSize= 1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_COMPLEMENTOS_EXCEL_IDCOMPLEMENTOEXCEL_GENERATOR")
	@Column(name="ID_COMPLEMENTO_EXCEL")
	private BigDecimal idComplementoExcel;

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
	
	@Column(name="DESCRIPCION_COMPLEMENTO")
	private String descripcionComplemento;

	//uni-directional many-to-one association to Archivo
    @ManyToOne
	@JoinColumn(name="ID_ARCHIVO")
	private Archivo archivo;

    public ComplementosExcel() {
    }

	public BigDecimal getIdComplementoExcel() {
		return this.idComplementoExcel;
	}

	public void setIdComplementoExcel(BigDecimal idComplementoExcel) {
		this.idComplementoExcel = idComplementoExcel;
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

	public Archivo getArchivo() {
		return this.archivo;
	}

	public void setArchivo(Archivo archivo) {
		this.archivo = archivo;
	}

	public String getDescripcionComplemento() {
		return descripcionComplemento;
	}

	public void setDescripcionComplemento(String descripcionComplemento) {
		this.descripcionComplemento = descripcionComplemento;
	}
	
}