package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the PGB_ERRORES_CARGUES database table.
 * 
 */
@Embeddable
public class ErroresCarguePK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="ID_ERROR_CARGUE", unique=true, nullable=false, precision=10)
	private long idErrorCargue;

	@Column(name="ID_MAESTRO_CARGUE", unique=true, nullable=false, precision=10)
	private long idMaestroCargue;

	@Column(name="SECUENCIA_ARCHIVO", unique=true, nullable=false, precision=10)
	private long secuenciaArchivo;

    public ErroresCarguePK() {
    }
	public long getIdErrorCargue() {
		return this.idErrorCargue;
	}
	public void setIdErrorCargue(long idErrorCargue) {
		this.idErrorCargue = idErrorCargue;
	}
	public long getIdMaestroCargue() {
		return this.idMaestroCargue;
	}
	public void setIdMaestroCargue(long idMaestroCargue) {
		this.idMaestroCargue = idMaestroCargue;
	}
	public long getSecuenciaArchivo() {
		return this.secuenciaArchivo;
	}
	public void setSecuenciaArchivo(long secuenciaArchivo) {
		this.secuenciaArchivo = secuenciaArchivo;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof ErroresCarguePK)) {
			return false;
		}
		ErroresCarguePK castOther = (ErroresCarguePK)other;
		return 
			(this.idErrorCargue == castOther.idErrorCargue)
			&& (this.idMaestroCargue == castOther.idMaestroCargue)
			&& (this.secuenciaArchivo == castOther.secuenciaArchivo);

    }
    
	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + ((int) (this.idErrorCargue ^ (this.idErrorCargue >>> 32)));
		hash = hash * prime + ((int) (this.idMaestroCargue ^ (this.idMaestroCargue >>> 32)));
		hash = hash * prime + ((int) (this.secuenciaArchivo ^ (this.secuenciaArchivo >>> 32)));
		
		return hash;
    }
}