package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import com.segurosbolivar.avaluos.util.UtilJpa;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_ANEXO_FOTOGRAFICO database table.
 * 
 */
@Entity
@Table(name="PGB_ANEXO_FOTOGRAFICO")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class AnexoFotografico implements Serializable {
	private static final long serialVersionUID = 1L;

	//Dnino 17 Jul 2016 Se deshabilita validacion para tiempo de respuesta
	//@PrePersist
	protected void onCreate() throws Exception {
		BigDecimal max = UtilJpa.getMaxTableValue("PGB_ANEXO_FOTOGRAFICO","ID_ANEXO_FOTOGRAFICO");
		if(idAnexoFotografico.compareTo(max)<1)
		{
			BigDecimal seqNew = UtilJpa.getAlterSequenceValueMaxTable(max,"SEQ_PGB_ANEXO_FOTOGRAFICO");
		   this.setIdAnexoFotografico(seqNew);
		}
	}
	
	@Id
	@SequenceGenerator(name="PGB_ANEXO_FOTOGRAFICO_IDANEXOFOTOGRAFICO_GENERATOR", sequenceName="SEQ_PGB_ANEXO_FOTOGRAFICO" , allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_ANEXO_FOTOGRAFICO_IDANEXOFOTOGRAFICO_GENERATOR")
	@Column(name="ID_ANEXO_FOTOGRAFICO", unique=true, nullable=false, precision=10)
	private BigDecimal idAnexoFotografico;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION", nullable=false)
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="USUARIO_CREACION", nullable=false, length=15)
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;

	//uni-directional many-to-one association to Archivo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_DOC_ANEXOS", nullable=false)
	private Archivo archivoPdf;

	//uni-directional many-to-one association to Archivo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_IMG_FACHADA", nullable=false)
	private Archivo archivoFoto;

	//bi-directional many-to-one association to Avaluo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_AVALUO", nullable=false)
	private Avaluo avaluo;

    public AnexoFotografico() {
    }

	public BigDecimal getIdAnexoFotografico() {
		return this.idAnexoFotografico;
	}

	public void setIdAnexoFotografico(BigDecimal idAnexoFotografico) {
		this.idAnexoFotografico = idAnexoFotografico;
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

	public Archivo getArchivoPdf() {
		return this.archivoPdf;
	}

	public void setArchivoPdf(Archivo archivoPdf) {
		this.archivoPdf = archivoPdf;
	}
	
	public Archivo getArchivoFoto() {
		return this.archivoFoto;
	}

	public void setArchivoFoto(Archivo archivoFoto) {
		this.archivoFoto = archivoFoto;
	}
	
	public Avaluo getAvaluo() {
		return this.avaluo;
	}

	public void setAvaluo(Avaluo avaluo) {
		this.avaluo = avaluo;
	}

	@Override
	public String toString() {
		return "AnexoFotografico [idAnexoFotografico=" + idAnexoFotografico
				+ ", fechaCreacion=" + fechaCreacion + ", fechaTransaccion="
				+ fechaTransaccion + ", usuarioCreacion=" + usuarioCreacion
				+ ", usuarioTransaccion=" + usuarioTransaccion
				+ ", archivoPdf=" + archivoPdf + ", archivoFoto=" + archivoFoto
				+ ", avaluo=" + avaluo + "]";
	}
	
}