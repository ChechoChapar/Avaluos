package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import com.segurosbolivar.avaluos.util.UtilJpa;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_CONDSALUBRIDAD database table.
 * 
 */
@Entity
@Table(name="PGB_CONDSALUBRIDAD")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class CondicionesSalubridad implements Serializable {
	private static final long serialVersionUID = 1L;

	//Dnino 17 Jul 2016 Se deshabilita validacion para tiempo de respuesta
	//@PrePersist
	protected void onCreate() throws Exception {
		BigDecimal max = UtilJpa.getMaxTableValue("PGB_CONDSALUBRIDAD","ID_CONDSALUBRIDAD");
		if(idCondicionSalubridad.compareTo(max)<1)
		{
			BigDecimal seqNew = UtilJpa.getAlterSequenceValueMaxTable(max,"SEQ_PGB_CONDSALUBRIDAD");
		   this.setIdCondicionSalubridad(seqNew);
		}
	}
	
	@Id
	@SequenceGenerator(name="PGB_CONDSALUBRIDAD_IDCONDICIONSALUBRIDAD_GENERATOR", sequenceName="SEQ_PGB_CONDSALUBRIDAD", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_CONDSALUBRIDAD_IDCONDICIONSALUBRIDAD_GENERATOR")
	@Column(name="ID_CONDSALUBRIDAD", unique=true, nullable=false, precision=10)
	private BigDecimal idCondicionSalubridad;

	@Column(name="A_REQUIERE_COND_SALUB", precision=3)
	private BigDecimal requiereCondicionesSalubridad;

	@Column(name="C_SALUBRIDAD", precision=3)
	private BigDecimal condicionesSalubridad;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION", nullable=false)
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="K_AGUASHERV", precision=3)
	private BigDecimal aguasServidas;

	@Column(name="K_AMBARBORIZA", precision=3)
	private BigDecimal ambientalArborizacion;

	@Column(name="K_AMBPARQUES", precision=3)
	private BigDecimal ambientalParques;

	@Column(name="K_AMBZVERDE", precision=3)
	private BigDecimal ambientalZonaVerde;

	@Column(name="K_BASURA", precision=3)
	private BigDecimal impactoNegativoBasura;

	@Column(name="K_INSERGURIDAD", precision=3)
	private BigDecimal impactoNegativoInseguridad;

	@Column(name="K_PORAIRE", precision=3)
	private BigDecimal impactoNegativoPorAire;

	@Column(name="K_RUIDO", precision=3)
	private BigDecimal impactoNegativoRuido;

	@Column(name="T_AMBNEGOTRO", length=100)
	private String impactoNegativoOtros;

	@Column(name="T_AMBOTRO", length=100)
	private String ambientalOtros;

	@Column(name="USUARIO_CREACION", nullable=false, length=15)
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;

	//bi-directional many-to-one association to Avaluo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_AVALUO", nullable=false)
	private Avaluo avaluo;

    public CondicionesSalubridad() {
    }

	public BigDecimal getIdCondicionSalubridad() {
		return this.idCondicionSalubridad;
	}

	public void setIdCondicionSalubridad(BigDecimal idCondicionSalubridad) {
		this.idCondicionSalubridad = idCondicionSalubridad;
	}

	public BigDecimal getRequiereCondicionesSalubridad() {
		return this.requiereCondicionesSalubridad;
	}

	public void setRequiereCondicionesSalubridad(BigDecimal requiereCondicionesSalubridad) {
		this.requiereCondicionesSalubridad = requiereCondicionesSalubridad;
	}

	public BigDecimal getCondicionesSalubridad() {
		return this.condicionesSalubridad;
	}

	public void setCondicionesSalubridad(BigDecimal condicionesSalubridad) {
		this.condicionesSalubridad = condicionesSalubridad;
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

	public BigDecimal getAguasServidas() {
		return this.aguasServidas;
	}

	public void setAguasServidas(BigDecimal aguasServidas) {
		this.aguasServidas = aguasServidas;
	}

	public BigDecimal getAmbientalArborizacion() {
		return this.ambientalArborizacion;
	}

	public void setAmbientalArborizacion(BigDecimal ambientalArborizacion) {
		this.ambientalArborizacion = ambientalArborizacion;
	}

	public BigDecimal getAmbientalParques() {
		return this.ambientalParques;
	}

	public void setAmbientalParques(BigDecimal ambientalParques) {
		this.ambientalParques = ambientalParques;
	}

	public BigDecimal getAmbientalZonaVerde() {
		return this.ambientalZonaVerde;
	}

	public void setAmbientalZonaVerde(BigDecimal ambientalZonaVerde) {
		this.ambientalZonaVerde = ambientalZonaVerde;
	}

	public BigDecimal getImpactoNegativoBasura() {
		return this.impactoNegativoBasura;
	}

	public void setImpactoNegativoBasura(BigDecimal impactoNegativoBasura) {
		this.impactoNegativoBasura = impactoNegativoBasura;
	}

	public BigDecimal getImpactoNegativoInseguridad() {
		return this.impactoNegativoInseguridad;
	}

	public void setImpactoNegativoInseguridad(BigDecimal impactoNegativoInseguridad) {
		this.impactoNegativoInseguridad = impactoNegativoInseguridad;
	}

	public BigDecimal getImpactoNegativoPorAire() {
		return this.impactoNegativoPorAire;
	}

	public void setImpactoNegativoPorAire(BigDecimal impactoNegativoPorAire) {
		this.impactoNegativoPorAire = impactoNegativoPorAire;
	}

	public BigDecimal getImpactoNegativoRuido() {
		return this.impactoNegativoRuido;
	}

	public void setImpactoNegativoRuido(BigDecimal impactoNegativoRuido) {
		this.impactoNegativoRuido = impactoNegativoRuido;
	}

	public String getImpactoNegativoOtros() {
		return this.impactoNegativoOtros;
	}

	public void setImpactoNegativoOtros(String impactoNegativoOtros) {
		this.impactoNegativoOtros = impactoNegativoOtros;
	}

	public String getAmbientalOtros() {
		return this.ambientalOtros;
	}

	public void setAmbientalOtros(String ambientalOtros) {
		this.ambientalOtros = ambientalOtros;
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