package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_LIQAVALUO_TOTAL database table.
 * 
 */
@Entity
@Table(name="PGB_LIQAVALUO_TOTAL")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class LiquidacionAvaluoTotal implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_LIQAVALUO_TOTAL_IDLIQAVALUOTOTAL_GENERATOR", sequenceName="SEQ_PGB_LIQAVALUO_TOTAL", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_LIQAVALUO_TOTAL_IDLIQAVALUOTOTAL_GENERATOR")
	@Column(name="ID_LIQAVALUO_TOTAL", unique=true, nullable=false, precision=10)
	private BigDecimal idLiqavaluoTotal;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION", nullable=false)
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="N_AVALUOUVR", precision=18, scale=5)
	private BigDecimal avaluoUvr;

	@Column(name="N_TOTALAVALUO", precision=18, scale=4)
	private BigDecimal totalAvaluo;

	@Column(name="N_VALORASEGURABLE", precision=18, scale=4)
	private BigDecimal valorAsegurable;

	@Column(name="N_VALUVRDIA", precision=18, scale=4)
	private BigDecimal valorUvrDia;

	@Column(name="R_CALIFICACION", precision=3)
	private BigDecimal calificacion;

	@Column(name="USUARIO_CREACION", nullable=false, length=15)
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;

	//bi-directional many-to-one association to Avaluo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_AVALUO", nullable=false)
	private Avaluo avaluo;

    public LiquidacionAvaluoTotal() {
    }

	public BigDecimal getIdLiqavaluoTotal() {
		return this.idLiqavaluoTotal;
	}

	public void setIdLiqavaluoTotal(BigDecimal idLiqavaluoTotal) {
		this.idLiqavaluoTotal = idLiqavaluoTotal;
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

	public BigDecimal getAvaluoUvr() {
		return this.avaluoUvr;
	}

	public void setAvaluoUvr(BigDecimal avaluoUvr) {
		this.avaluoUvr = avaluoUvr;
	}

	public BigDecimal getTotalAvaluo() {
		return this.totalAvaluo;
	}

	public void setTotalAvaluo(BigDecimal totalAvaluo) {
		this.totalAvaluo = totalAvaluo;
	}

	public BigDecimal getValorAsegurable() {
		return this.valorAsegurable;
	}

	public void setValorAsegurable(BigDecimal valorAsegurable) {
		this.valorAsegurable = valorAsegurable;
	}

	public BigDecimal getValorUvrDia() {
		return this.valorUvrDia;
	}

	public void setValorUvrDia(BigDecimal valorUvrDia) {
		this.valorUvrDia = valorUvrDia;
	}

	public BigDecimal getCalificacion() {
		return this.calificacion;
	}

	public void setCalificacion(BigDecimal calificacion) {
		this.calificacion = calificacion;
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
	
}