package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_MAESTRO_CARGUES database table.
 * 
 */
@Entity
@Table(name="PGB_MAESTRO_CARGUES")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class MaestroCargue implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private MaestroCarguePK id;

	@Column(nullable=false, length=1)
	private String estado;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="NOMBRE_ARCHIVO", nullable=false, length=250)
	private String nombreArchivo;

	@Column(name="NUM_REGISTROS", nullable=false, precision=6)
	private BigDecimal numRegistros;

	@Column(name="TIENE_ANEXOS", length=1)
	private String tieneAnexos;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;

	//bi-directional many-to-one association to ErroresCargue
	@OneToMany(mappedBy="maestroCargue")
	private List<ErroresCargue> erroresCargues;

    public MaestroCargue() {
    }

	public MaestroCarguePK getId() {
		return this.id;
	}

	public void setId(MaestroCarguePK id) {
		this.id = id;
	}
	
	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
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

	public BigDecimal getNumRegistros() {
		return this.numRegistros;
	}

	public void setNumRegistros(BigDecimal numRegistros) {
		this.numRegistros = numRegistros;
	}

	public String getTieneAnexos() {
		return this.tieneAnexos;
	}

	public void setTieneAnexos(String tieneAnexos) {
		this.tieneAnexos = tieneAnexos;
	}

	public String getUsuarioTransaccion() {
		return this.usuarioTransaccion;
	}

	public void setUsuarioTransaccion(String usuarioTransaccion) {
		this.usuarioTransaccion = usuarioTransaccion;
	}

	public List<ErroresCargue> getErroresCargues() {
		return this.erroresCargues;
	}

	public void setErroresCargues(List<ErroresCargue> erroresCargues) {
		this.erroresCargues = erroresCargues;
	}
	
}