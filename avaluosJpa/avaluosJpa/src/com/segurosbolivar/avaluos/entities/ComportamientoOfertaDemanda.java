package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import com.segurosbolivar.avaluos.util.UtilJpa;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_COMP_OFERTA_DEMANDA database table.
 * 
 */
@Entity
@Table(name="PGB_COMP_OFERTA_DEMANDA")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class ComportamientoOfertaDemanda implements Serializable {
	private static final long serialVersionUID = 1L;

	//Dnino 17 Jul 2016 Se deshabilita validacion para tiempo de respuesta
	//@PrePersist
	protected void onCreate() throws Exception {
		BigDecimal max = UtilJpa.getMaxTableValue("PGB_COMP_OFERTA_DEMANDA","ID_COMPOFERTADEMANDA");
		if(idComportamientoOfertaDemanda.compareTo(max)<1)
		{
			BigDecimal seqNew = UtilJpa.getAlterSequenceValueMaxTable(max,"SEQ_PGB_COMP_OFERTA_DEMANDA");
		   this.setIdComportamientoOfertaDemanda(seqNew);
		}
	}
	
	@Id
	@SequenceGenerator(name="PGB_COMP_OFERTA_DEMANDA_IDCOMPORTAMIENTOOFERTADEMANDA_GENERATOR", sequenceName="SEQ_PGB_COMP_OFERTA_DEMANDA", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_COMP_OFERTA_DEMANDA_IDCOMPORTAMIENTOOFERTADEMANDA_GENERATOR")
	@Column(name="ID_COMPOFERTADEMANDA", unique=true, nullable=false, precision=10)
	private BigDecimal idComportamientoOfertaDemanda;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION", nullable=false)
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="N_TIPOCOMERCIALIZA", precision=22)
	private BigDecimal tipoComercializacion;

	@Column(name="T_ACTEDIFICADORA", length=500)
	private String actualidadEdificadora;

	@Column(name="T_COMPORTAOD", length=500)
	private String comportamientoOfertaDemanda;

	@Column(name="USUARIO_CREACION", nullable=false, length=15)
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;

	//bi-directional many-to-one association to Avaluo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_AVALUO", nullable=false)
	private Avaluo avaluo;

    public ComportamientoOfertaDemanda() {
    }

	public BigDecimal getIdComportamientoOfertaDemanda() {
		return this.idComportamientoOfertaDemanda;
	}

	public void setIdComportamientoOfertaDemanda(BigDecimal idComportamientoOfertaDemanda) {
		this.idComportamientoOfertaDemanda = idComportamientoOfertaDemanda;
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

	public BigDecimal getTipoComercializacion() {
		return this.tipoComercializacion;
	}

	public void setTipoComercializacion(BigDecimal tipoComercializacion) {
		this.tipoComercializacion = tipoComercializacion;
	}

	public String getActualidadEdificadora() {
		return this.actualidadEdificadora;
	}

	public void setActualidadEdificadora(String actualidadEdificadora) {
		this.actualidadEdificadora = actualidadEdificadora;
	}

	public String getComportamientoOfertaDemanda() {
		return this.comportamientoOfertaDemanda;
	}

	public void setComportamientoOfertaDemanda(String comportamientoOfertaDemanda) {
		this.comportamientoOfertaDemanda = comportamientoOfertaDemanda;
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