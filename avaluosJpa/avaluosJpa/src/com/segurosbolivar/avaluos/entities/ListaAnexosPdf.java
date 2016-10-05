package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;


/**
 * The persistent class for the PGB_LST_ANEXOS_PDF database table.
 * 
 */
@Entity
@Table(name="PGB_LST_ANEXOS_PDF")
public class ListaAnexosPdf implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_LST_ANEXOS_PDF_IDLISTAANEXOSPDF_GENERATOR", sequenceName="SEQ_PGB_LST_ANEXOS_PDF")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_LST_ANEXOS_PDF_IDLISTAANEXOSPDF_GENERATOR")
	@Column(name="ID_LST_ANEXOS_PDF")
	private BigDecimal idListaAnexosPdf;

	private String column1;

	@Column(name="CONSECUTIVO_ANEXO")
	private BigDecimal consecutivoAnexo;

    @Temporal( TemporalType.DATE)
	@Column(name="FECHA_CREACION")
	private Date fechaCreacion;

    @Temporal( TemporalType.DATE)
	@Column(name="FECHA_TRANSACCION")
	private Date fechaTransaccion;

	@Column(name="USUARIO_CREACION")
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION")
	private String usuarioTransaccion;

	//bi-directional many-to-one association to Archivo
    @ManyToOne
	@JoinColumn(name="ID_ARCHIVO")
	private Archivo archivo;

	//bi-directional many-to-one association to Avaluo
    @ManyToOne
	@JoinColumn(name="ID_AVALUO")
	private Avaluo pgbAvaluo;

    public ListaAnexosPdf() {
    }

	public BigDecimal getIdListaAnexosPdf() {
		return this.idListaAnexosPdf;
	}

	public void setIdListaAnexosPdf(BigDecimal idListaAnexosPdf) {
		this.idListaAnexosPdf = idListaAnexosPdf;
	}

	public String getColumn1() {
		return this.column1;
	}

	public void setColumn1(String column1) {
		this.column1 = column1;
	}

	public BigDecimal getConsecutivoAnexo() {
		return this.consecutivoAnexo;
	}

	public void setConsecutivoAnexo(BigDecimal consecutivoAnexo) {
		this.consecutivoAnexo = consecutivoAnexo;
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
	
	public Avaluo getPgbAvaluo() {
		return this.pgbAvaluo;
	}

	public void setPgbAvaluo(Avaluo pgbAvaluo) {
		this.pgbAvaluo = pgbAvaluo;
	}
	
}