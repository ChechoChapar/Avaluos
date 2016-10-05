package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_ERRORES_CARGUES database table.
 * 
 */
@Entity
@Table(name="PGB_ERRORES_CARGUES")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class ErroresCargue implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private ErroresCarguePK id;

	@Column(name="DESC_ERROR_CARGUE", nullable=false, length=250)
	private String descErrorCargue;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;

	//bi-directional many-to-one association to MaestroCargue
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumns({
		@JoinColumn(name="ID_MAESTRO_CARGUE", referencedColumnName="ID_MAESTRO_CARGUE", nullable=false, insertable=false, updatable=false),
		@JoinColumn(name="SECUENCIA_ARCHIVO", referencedColumnName="SECUENCIA_ARCHIVO", nullable=false, insertable=false, updatable=false)
		})
	private MaestroCargue maestroCargue;

    public ErroresCargue() {
    }

	public ErroresCarguePK getId() {
		return this.id;
	}

	public void setId(ErroresCarguePK id) {
		this.id = id;
	}
	
	public String getDescErrorCargue() {
		return this.descErrorCargue;
	}

	public void setDescErrorCargue(String descErrorCargue) {
		this.descErrorCargue = descErrorCargue;
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

	public MaestroCargue getMaestroCargue() {
		return this.maestroCargue;
	}

	public void setMaestroCargue(MaestroCargue maestroCargue) {
		this.maestroCargue = maestroCargue;
	}
	
}