package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_LIQAVALUO database table.
 * 
 */
@Entity
@Table(name="PGB_LIQAVALUO")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class LiquidacionAvaluo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_LIQAVALUO_IDLIQAVALUO_GENERATOR", sequenceName="SEQ_PGB_LIQAVALUO", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_LIQAVALUO_IDLIQAVALUO_GENERATOR")
	@Column(name="ID_LIQAVALUO", unique=true, nullable=false, precision=22)
	private BigDecimal idLiqavaluo;

	@Column(name="A_DESCDEPENDENCIA", length=30)
	private String descripcionDependencia;

	@Column(name="C_DESCRIPLIQ", precision=3)
	private BigDecimal descripcionLiquidacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION", nullable=false)
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="N_AREALIQ", precision=18, scale=4)
	private BigDecimal areaLiquidacion;

	@Column(name="N_VAL", precision=18, scale=4)
	private BigDecimal valor;

	@Column(name="N_VALTOT", precision=18, scale=4)
	private BigDecimal valorTotal;

	@Column(name="USUARIO_CREACION", nullable=false, length=15)
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;
	
	@Column(name="CONSECUTIVO", length=2)
	private BigDecimal consecutivo;

	//bi-directional many-to-one association to Avaluo
	@ManyToOne(fetch=FetchType.LAZY)
	//@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="ID_AVALUO", nullable=false)
	private Avaluo avaluo;

    public LiquidacionAvaluo() {
    }

	public BigDecimal getIdLiqavaluo() {
		return this.idLiqavaluo;
	}

	public void setIdLiqavaluo(BigDecimal idLiqavaluo) {
		this.idLiqavaluo = idLiqavaluo;
	}

	public String getDescripcionDependencia() {
		return this.descripcionDependencia;
	}

	public void setDescripcionDependencia(String descripcionDependencia) {
		this.descripcionDependencia = descripcionDependencia;
	}

	public BigDecimal getDescripcionLiquidacion() {
		return this.descripcionLiquidacion;
	}

	public void setDescripcionLiquidacion(BigDecimal descripcionLiquidacion) {
		this.descripcionLiquidacion = descripcionLiquidacion;
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

	public BigDecimal getAreaLiquidacion() {
		return this.areaLiquidacion;
	}

	public void setAreaLiquidacion(BigDecimal areaLiquidacion) {
		this.areaLiquidacion = areaLiquidacion;
	}

	public BigDecimal getValor() {
		return this.valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}

	public BigDecimal getValorTotal() {
		return this.valorTotal;
	}

	public void setValorTotal(BigDecimal valorTotal) {
		this.valorTotal = valorTotal;
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

	public Avaluo getAvaluo() {
		return this.avaluo;
	}

	public void setAvaluo(Avaluo avaluo) {
		this.avaluo = avaluo;
	}

	public BigDecimal getConsecutivo() {
	    return consecutivo;
	}

	public void setConsecutivo(BigDecimal consecutivo) {
	    this.consecutivo = consecutivo;
	}

	@Override
	public String toString() {
		return "LiquidacionAvaluo [idLiqavaluo=" + idLiqavaluo
				+ ", descripcionDependencia=" + descripcionDependencia
				+ ", descripcionLiquidacion=" + descripcionLiquidacion
				+ ", fechaCreacion=" + fechaCreacion + ", fechaTransaccion="
				+ fechaTransaccion + ", areaLiquidacion=" + areaLiquidacion
				+ ", valor=" + valor + ", valorTotal=" + valorTotal
				+ ", usuarioCreacion=" + usuarioCreacion
				+ ", usuarioTransaccion=" + usuarioTransaccion
				+ ", consecutivo=" + consecutivo + ", avaluo=" + avaluo + "]";
	}
	
	
	
}