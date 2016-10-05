package com.segurosbolivar.avaluos.util;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @deprecated Actualmente no se usa
 * */
public class ResumenCargue implements Serializable {
	private static final long serialVersionUID = 1L;


	private BigDecimal aplicados;

	private Date fechaTransaccion;

	private BigDecimal numeroRefCargue;

	private BigDecimal rechazados;

	private BigDecimal sinEstado;

	private String tipoCargue;

	private BigDecimal total;

    public ResumenCargue() {
    }

	public BigDecimal getAplicados() {
		return this.aplicados;
	}

	public void setAplicados(BigDecimal aplicados) {
		this.aplicados = aplicados;
	}

	public Date getFechaTransaccion() {
		return this.fechaTransaccion;
	}

	public void setFechaTransaccion(Date fechaTransaccion) {
		this.fechaTransaccion = fechaTransaccion;
	}

	public BigDecimal getNumeroRefCargue() {
		return this.numeroRefCargue;
	}

	public void setNumeroRefCargue(BigDecimal numeroRefCargue) {
		this.numeroRefCargue = numeroRefCargue;
	}

	public BigDecimal getRechazados() {
		return this.rechazados;
	}

	public void setRechazados(BigDecimal rechazados) {
		this.rechazados = rechazados;
	}

	public BigDecimal getSinEstado() {
		return this.sinEstado;
	}

	public void setSinEstado(BigDecimal sinEstado) {
		this.sinEstado = sinEstado;
	}

	public String getTipoCargue() {
		return this.tipoCargue;
	}

	public void setTipoCargue(String tipoCargue) {
		this.tipoCargue = tipoCargue;
	}

	public BigDecimal getTotal() {
		return this.total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

}