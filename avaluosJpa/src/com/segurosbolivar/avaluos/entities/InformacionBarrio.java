package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import com.segurosbolivar.avaluos.util.UtilJpa;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_INFBARRIO database table.
 * 
 */
@Entity
@Table(name="PGB_INFBARRIO")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class InformacionBarrio implements Serializable {
	private static final long serialVersionUID = 1L;
	
	
	//Dnino 17 Jul 2016 Se deshabilita validacion para tiempo de respuesta
	//@PrePersist
	protected void onCreate() throws Exception {
		BigDecimal max = UtilJpa.getMaxTableValue("PGB_INFBARRIO","ID_INFBARRIO");
		if(idInformacionBarrio.compareTo(max)<1)
		{
			BigDecimal seqNew = UtilJpa.getAlterSequenceValueMaxTable(max,"SEQ_PGB_INFBARRIO");
		   this.setIdInformacionBarrio(seqNew);
		}
	}
	
	
	@Id
	@SequenceGenerator(name="PGB_INFBARRIO_IDINFORMACIONBARRIO_GENERATOR", sequenceName="SEQ_PGB_INFBARRIO", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_INFBARRIO_IDINFORMACIONBARRIO_GENERATOR")
	@Column(name="ID_INFBARRIO", unique=true, nullable=false, precision=10)
	private BigDecimal idInformacionBarrio;

	@Column(name="A_EDIIGUALES", precision=5)
	private BigDecimal edificacionesIguales;

	@Column(name="C_ANDENES", precision=3)
	private BigDecimal andenes;

	@Column(name="C_ESTRATO", precision=3)
	private BigDecimal estrato;

	@Column(name="C_ESTVIAACCESO", precision=3)
	private BigDecimal estadosViaAcceso;

	@Column(name="C_LEGALIDAD", precision=3)
	private BigDecimal legalidad;

	@Column(name="C_PAVIMENTADA", precision=3)
	private BigDecimal pavimentada;

	@Column(name="C_SARDENELES", precision=3)
	private BigDecimal sardeneles;

	@Column(name="C_TOPOGRAFIA", precision=3)
	private BigDecimal topografia;

	@Column(name="C_TRANSPORTE", precision=3)
	private BigDecimal transporte;

    @Temporal( TemporalType.DATE)
	@Column(name="FECHA_CREACION", nullable=false)
	private Date fechaCreacion;

    @Temporal( TemporalType.DATE)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="K_ACUEDUCTOPREDIO", precision=3)
	private BigDecimal acueductoPredio;

	@Column(name="K_ACUEDUCTOSECTOR", precision=3)
	private BigDecimal acueductoSector;

	@Column(name="K_ALAMEDAS", precision=3)
	private BigDecimal alamedas;

	@Column(name="K_ALCANTAPREDIO", precision=3)
	private BigDecimal alcantarilladoPredio;

	@Column(name="K_ALCANTASECTOR", precision=3)
	private BigDecimal alcantarilladoSector;

	@Column(name="K_ALUMBRADO", precision=3)
	private BigDecimal alumbrado;

	@Column(name="K_ARBORIZACION", precision=3)
	private BigDecimal arborizacion;

	@Column(name="K_CICLORUTAS", precision=3)
	private BigDecimal cicloRutas;

	@Column(name="K_COMERCIO", precision=3)
	private BigDecimal comercio;

	@Column(name="K_ELECTRICAPREDIO", precision=3)
	private BigDecimal electricidadPredio;

	@Column(name="K_ELECTRICASECTOR", precision=3)
	private BigDecimal electricidadSector;

	@Column(name="K_GASPREDIO", precision=3)
	private BigDecimal gasPredio;

	@Column(name="K_GASSECTOR", precision=3)
	private BigDecimal gasSector;

	@Column(name="K_INDUSTRIA", precision=3)
	private BigDecimal industria;

	@Column(name="K_OTROSUSOS", precision=3)
	private BigDecimal otrosUsos;

	@Column(name="K_PARADERO", precision=3)
	private BigDecimal paradero;

	@Column(name="K_PARQUES", precision=3)
	private BigDecimal parques;

	@Column(name="K_TELPREDIO", precision=3)
	private BigDecimal telefonoPredio;

	@Column(name="K_TELSECTOR", precision=3)
	private BigDecimal telefonoSector;

	@Column(name="K_VIVIENDA", precision=3)
	private BigDecimal vivienda;

	@Column(name="K_ZONASVERDES", precision=3)
	private BigDecimal zonasVerdes;

	@Column(name="T_OTROSUSOS", length=30)
	private String textoOtrosUsos;

	@Column(name="T_PERSPECTIVAS", length=500)
	private String perspectivas;

	@Column(name="USUARIO_CREACION", nullable=false, length=15)
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;

	//bi-directional many-to-one association to Avaluo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_AVALUO", nullable=false)
	private Avaluo avaluo;

    public InformacionBarrio() {
    }

	public BigDecimal getIdInformacionBarrio() {
		return this.idInformacionBarrio;
	}

	public void setIdInformacionBarrio(BigDecimal idInformacionBarrio) {
		this.idInformacionBarrio = idInformacionBarrio;
	}

	public BigDecimal getEdificacionesIguales() {
		return this.edificacionesIguales;
	}

	public void setEdificacionesIguales(BigDecimal edificacionesIguales) {
		this.edificacionesIguales = edificacionesIguales;
	}

	public BigDecimal getAndenes() {
		return this.andenes;
	}

	public void setAndenes(BigDecimal andenes) {
		this.andenes = andenes;
	}

	public BigDecimal getEstrato() {
		return this.estrato;
	}

	public void setEstrato(BigDecimal estrato) {
		this.estrato = estrato;
	}

	public BigDecimal getEstadosViaAcceso() {
		return this.estadosViaAcceso;
	}

	public void setEstadosViaAcceso(BigDecimal estadosViaAcceso) {
		this.estadosViaAcceso = estadosViaAcceso;
	}

	public BigDecimal getLegalidad() {
		return this.legalidad;
	}

	public void setLegalidad(BigDecimal legalidad) {
		this.legalidad = legalidad;
	}

	public BigDecimal getPavimentada() {
		return this.pavimentada;
	}

	public void setPavimentada(BigDecimal pavimentada) {
		this.pavimentada = pavimentada;
	}

	public BigDecimal getSardeneles() {
		return this.sardeneles;
	}

	public void setSardeneles(BigDecimal sardeneles) {
		this.sardeneles = sardeneles;
	}

	public BigDecimal getTopografia() {
		return this.topografia;
	}

	public void setTopografia(BigDecimal topografia) {
		this.topografia = topografia;
	}

	public BigDecimal getTransporte() {
		return this.transporte;
	}

	public void setTransporte(BigDecimal transporte) {
		this.transporte = transporte;
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

	public BigDecimal getAcueductoPredio() {
		return this.acueductoPredio;
	}

	public void setAcueductoPredio(BigDecimal acueductoPredio) {
		this.acueductoPredio = acueductoPredio;
	}

	public BigDecimal getAcueductoSector() {
		return this.acueductoSector;
	}

	public void setAcueductoSector(BigDecimal acueductoSector) {
		this.acueductoSector = acueductoSector;
	}

	public BigDecimal getAlamedas() {
		return this.alamedas;
	}

	public void setAlamedas(BigDecimal alamedas) {
		this.alamedas = alamedas;
	}

	public BigDecimal getAlcantarilladoPredio() {
		return this.alcantarilladoPredio;
	}

	public void setAlcantarilladoPredio(BigDecimal alcantarilladoPredio) {
		this.alcantarilladoPredio = alcantarilladoPredio;
	}

	public BigDecimal getAlcantarilladoSector() {
		return this.alcantarilladoSector;
	}

	public void setAlcantarilladoSector(BigDecimal alcantarilladoSector) {
		this.alcantarilladoSector = alcantarilladoSector;
	}

	public BigDecimal getAlumbrado() {
		return this.alumbrado;
	}

	public void setAlumbrado(BigDecimal alumbrado) {
		this.alumbrado = alumbrado;
	}

	public BigDecimal getArborizacion() {
		return this.arborizacion;
	}

	public void setArborizacion(BigDecimal arborizacion) {
		this.arborizacion = arborizacion;
	}

	public BigDecimal getCicloRutas() {
		return this.cicloRutas;
	}

	public void setCicloRutas(BigDecimal cicloRutas) {
		this.cicloRutas = cicloRutas;
	}

	public BigDecimal getComercio() {
		return this.comercio;
	}

	public void setComercio(BigDecimal comercio) {
		this.comercio = comercio;
	}

	public BigDecimal getElectricidadPredio() {
		return this.electricidadPredio;
	}

	public void setElectricidadPredio(BigDecimal electricidadPredio) {
		this.electricidadPredio = electricidadPredio;
	}

	public BigDecimal getElectricidadSector() {
		return this.electricidadSector;
	}

	public void setElectricidadSector(BigDecimal electricidadSector) {
		this.electricidadSector = electricidadSector;
	}

	public BigDecimal getGasPredio() {
		return this.gasPredio;
	}

	public void setGasPredio(BigDecimal gasPredio) {
		this.gasPredio = gasPredio;
	}

	public BigDecimal getGasSector() {
		return this.gasSector;
	}

	public void setGasSector(BigDecimal gasSector) {
		this.gasSector = gasSector;
	}

	public BigDecimal getIndustria() {
		return this.industria;
	}

	public void setIndustria(BigDecimal industria) {
		this.industria = industria;
	}

	public BigDecimal getOtrosUsos() {
		return this.otrosUsos;
	}

	public void setOtrosUsos(BigDecimal otrosUsos) {
		this.otrosUsos = otrosUsos;
	}

	public BigDecimal getParadero() {
		return this.paradero;
	}

	public void setParadero(BigDecimal paradero) {
		this.paradero = paradero;
	}

	public BigDecimal getParques() {
		return this.parques;
	}

	public void setParques(BigDecimal parques) {
		this.parques = parques;
	}

	public BigDecimal getTelefonoPredio() {
		return this.telefonoPredio;
	}

	public void setTelefonoPredio(BigDecimal telefonoPredio) {
		this.telefonoPredio = telefonoPredio;
	}

	public BigDecimal getTelefonoSector() {
		return this.telefonoSector;
	}

	public void setTelefonoSector(BigDecimal telefonoSector) {
		this.telefonoSector = telefonoSector;
	}

	public BigDecimal getVivienda() {
		return this.vivienda;
	}

	public void setVivienda(BigDecimal vivienda) {
		this.vivienda = vivienda;
	}

	public BigDecimal getZonasVerdes() {
		return this.zonasVerdes;
	}

	public void setZonasVerdes(BigDecimal zonasVerdes) {
		this.zonasVerdes = zonasVerdes;
	}

	public String getTextoOtrosUsos() {
		return this.textoOtrosUsos;
	}

	public void settextoOtrosUsos(String otrosUsos) {
		this.textoOtrosUsos = otrosUsos;
	}

	public String getPerspectivas() {
		return this.perspectivas;
	}

	public void setPerspectivas(String perspectivas) {
		this.perspectivas = perspectivas;
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

	@Override
	public String toString() {
		return "InformacionBarrio [idInformacionBarrio=" + idInformacionBarrio
				+ ", edificacionesIguales=" + edificacionesIguales
				+ ", andenes=" + andenes + ", estrato=" + estrato
				+ ", estadosViaAcceso=" + estadosViaAcceso + ", legalidad="
				+ legalidad + ", pavimentada=" + pavimentada + ", sardeneles="
				+ sardeneles + ", topografia=" + topografia + ", transporte="
				+ transporte + ", fechaCreacion=" + fechaCreacion
				+ ", fechaTransaccion=" + fechaTransaccion
				+ ", acueductoPredio=" + acueductoPredio + ", acueductoSector="
				+ acueductoSector + ", alamedas=" + alamedas
				+ ", alcantarilladoPredio=" + alcantarilladoPredio
				+ ", alcantarilladoSector=" + alcantarilladoSector
				+ ", alumbrado=" + alumbrado + ", arborizacion=" + arborizacion
				+ ", cicloRutas=" + cicloRutas + ", comercio=" + comercio
				+ ", electricidadPredio=" + electricidadPredio
				+ ", electricidadSector=" + electricidadSector + ", gasPredio="
				+ gasPredio + ", gasSector=" + gasSector + ", industria="
				+ industria + ", otrosUsos=" + otrosUsos + ", paradero="
				+ paradero + ", parques=" + parques + ", telefonoPredio="
				+ telefonoPredio + ", telefonoSector=" + telefonoSector
				+ ", vivienda=" + vivienda + ", zonasVerdes=" + zonasVerdes
				+ ", textoOtrosUsos=" + textoOtrosUsos + ", perspectivas="
				+ perspectivas + ", usuarioCreacion=" + usuarioCreacion
				+ ", usuarioTransaccion=" + usuarioTransaccion + ", avaluo="
				+ avaluo + "]";
	}
	
	
	
}