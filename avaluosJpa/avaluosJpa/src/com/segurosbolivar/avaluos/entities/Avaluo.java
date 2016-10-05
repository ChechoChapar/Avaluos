package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import com.segurosbolivar.avaluos.util.UtilJpa;


import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;
import java.util.List;
import static org.eclipse.persistence.annotations.CacheType.NONE;
import static org.eclipse.persistence.annotations.CacheType.SOFT_WEAK;
import static org.eclipse.persistence.annotations.CacheType.HARD_WEAK;


/**
 * The persistent class for the PGB_AVALUOS database table.
 * 
 */
@Entity
@Table(name="PGB_AVALUOS")
@NamedQueries({@NamedQuery(name = "buscaId", query = "Select a from Avaluo a where a.idAvaluo = :id"),@NamedQuery(name = "buscaPorEstado", query = "select a from Avaluo a where a.estadoAvaluo = :estado")})
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class Avaluo implements Serializable {
	private static final long serialVersionUID = 1L;

	@PrePersist
	protected void onCreate() throws Exception {
		BigDecimal max = UtilJpa.getMaxTableValue("PGB_AVALUOS","ID_AVALUO");
		if(idAvaluo.compareTo(max)<1)
		{
			BigDecimal seqNew = UtilJpa.getAlterSequenceValueMaxTable(max,"SEQ_PGB_AVALUOS");
		   this.setIdAvaluo(seqNew);
		}
	}
	
	@Id
	@SequenceGenerator(name="PGB_AVALUOS_IDAVALUO_GENERATOR", sequenceName="SEQ_PGB_AVALUOS", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_AVALUOS_IDAVALUO_GENERATOR")
	@Column(name="ID_AVALUO", unique=true, nullable=false, precision=22)
	private BigDecimal idAvaluo;

	@Column(name="A_CODBANCO", nullable=false, precision=6)
	private BigDecimal codigoBanco;

	@Column(name="A_CODDANE_CIUDAD", nullable=false, precision=13)
	private BigDecimal codigoDaneCiudad;

	@Column(name="A_CODDANE_DEPTO", nullable=false, precision=13)
	private BigDecimal codigoDaneDepartamento;

	@Column(name="A_ESTADOAVALUO", nullable=false, precision=2)
	private BigDecimal estadoAvaluo;

	@Column(name="A_NOMBANCO", nullable=false, length=30)
	private String nombreBanco;

	@Column(name="A_SOLCEL", precision=15)
	private BigDecimal celularSolicitante;

	@Column(name="A_SOLCORREO", length=30)
	private String correoSolicitante;

	@Column(name="A_SOLTEL", precision=15)
	private BigDecimal telefonoSolicitante;

	@Column(name="A_TIPO_INFORME", nullable=false, precision=2)
	private BigDecimal tipoInforme;

	@Column(name="A_TIPODOCUMENTO", nullable=false, length=3)
	private String tipoDocumento;

	@Column(name="A_UBICGPS", length=30)
	private String ubicacionGps;

	@Column(name="C_IDMETODOLOGIA", nullable=false, precision=22)
	private BigDecimal idMetodologia;

	@Column(name="C_IDOBJETOAVALUO", nullable=false, precision=22)
	private BigDecimal idObjetoAvaluo;

	@Column(name="C_IDTIPOIDENTIFICACION", nullable=false, precision=22)
	private BigDecimal idTipoIdentificacion;
	
	//
	@Column(name="C_SISTEMA")
	private BigDecimal sistemaCoordenadasBUA;

    @Temporal( TemporalType.DATE)
	@Column(name="F_FECHAAVALUO", nullable=false)
	private Date fechaAvaluo;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION", nullable=false)
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="N_CONSECUTIVOBANCO", nullable=false, precision=22)
	private BigDecimal consecutivoBanco;

	@Column(name="N_IDENTIFICACION")
	private String numeroIdentificacion;

	@Column(name="T_BARRIO", nullable=false, length=30)
	private String barrio;

	@Column(name="T_DIRINMUEBLE", nullable=false, length=100)
	private String direccionInmueble;

	@Column(name="T_JUSTIFICACION", nullable=false, length=500)
	private String justificacion;

	//
	@Column(name="T_LATITUD")
	private String latitudSFBUA;

	//
	@Column(name="T_LONGITUD")
	private String longitudSFBUA;

	@Column(name="T_NOMBCONJEDIF", length=30)
	private String nombreConjuntoEdificio;

	@Column(name="T_NOMBRESOLICITANTE", nullable=false, length=60)
	private String nombreSolicitante;

	@Column(name="T_SECTOR", nullable=false, precision=3)
	private BigDecimal sector;

	//
	@Column(name="T_SISTEMA")
	private String SistemaCoordenadasTxtBUA;

	@Column(name="T_USUARIO", nullable=false, length=30)
	private String tUsuario;

	@Column(name="USUARIO_CREACION", nullable=false, length=5)
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;
	
	//bi-directional many-to-one association to PgbLogsGeneraArchivo
	@ManyToOne
	@JoinColumn(name="A_IDARCHIVO")
	private LogsGeneraArchivo logsGeneraArchivo;

	//bi-directional many-to-one association to AnexoFotografico
	@OneToMany(mappedBy="avaluo")
	private List<AnexoFotografico> anexosFotograficos;

	//uni-directional many-to-one association to Ciudad
	@Column(name="C_IDCIUDAD", nullable=false, precision=13)
	private BigDecimal idCiudad;
	
	@Column(name="C_IDDEPARTAMENTO", nullable=false, precision=13)
	private BigDecimal idDepartamento;

	@Column(name="A_NUMLINEA", precision=22)
	private BigDecimal numLinea;
	
	//bi-directional many-to-one association to ComportamientoOfertaDemanda
	@OneToMany(mappedBy="avaluo", cascade=CascadeType.ALL)
	private List<ComportamientoOfertaDemanda> compOfertaDemanda;

	//bi-directional many-to-one association to CondicionesSalubridad
	@OneToMany(mappedBy="avaluo", cascade=CascadeType.ALL)
	private List<CondicionesSalubridad> condicionSalubridad;

	//bi-directional many-to-one association to HistoricoAvaluo
	@OneToMany(mappedBy="avaluo")
	private List<HistoricoAvaluo> historicosAvaluo;

	//bi-directional many-to-one association to InformacionBarrio
	@OneToMany(mappedBy="avaluo", cascade=CascadeType.ALL)
	private List<InformacionBarrio> informacionBarrio;

	//bi-directional many-to-one association to InformacionConstruccion
	@OneToMany(mappedBy="avaluo", cascade=CascadeType.ALL)
	private List<InformacionConstruccion> informacionConstruccion;

	//bi-directional many-to-one association to InformacionInmueble
	@OneToMany(mappedBy="avaluo", cascade=CascadeType.ALL)
	private List<InformacionInmueble> informacionInmueble;

	//bi-directional many-to-one association to LiquidacionAvaluo
	//@OneToMany(fetch=FetchType.EAGER, mappedBy="avaluo")
	@OneToMany(mappedBy="avaluo", cascade=CascadeType.ALL)
	private List<LiquidacionAvaluo> liquidacionAvaluos;

	//bi-directional many-to-one association to LiquidacionAvaluoTotal
	@OneToMany(mappedBy="avaluo", cascade=CascadeType.ALL)
	private List<LiquidacionAvaluoTotal> liquidacionTotal;

	//bi-directional many-to-one association to Observaciones
	@OneToMany(mappedBy="avaluo", cascade=CascadeType.ALL)
	private List<Observaciones> observacion;
	
	@Transient
	private Dominios dominioTipoIdentificacion;
	
	@Transient
	private Dominios dominioMetodologia;
	
	@Transient
	private Ciudad objCiudad;
	
	@Transient
	private String matriculaInmobiliariaPpal1;
	
	@Transient
	private String fechaAvaluoTetxo;
	
    public Avaluo() {
    }

	public BigDecimal getIdAvaluo() {
		return this.idAvaluo;
	}

	public void setIdAvaluo(BigDecimal idAvaluo) {
		this.idAvaluo = idAvaluo;
	}

	public BigDecimal getCodigoBanco() {
		return this.codigoBanco;
	}

	public void setCodigoBanco(BigDecimal codigoBanco) {
		this.codigoBanco = codigoBanco;
	}

	public BigDecimal getCodigoDaneCiudad() {
		return this.codigoDaneCiudad;
	}

	public void setCodigoDaneCiudad(BigDecimal codigoDaneCiudad) {
		this.codigoDaneCiudad = codigoDaneCiudad;
	}

	public BigDecimal getCodigoDaneDepartamento() {
		return this.codigoDaneDepartamento;
	}

	public void setCodigoDaneDepartamento(BigDecimal codigoDaneDepartamento) {
		this.codigoDaneDepartamento = codigoDaneDepartamento;
	}

	public BigDecimal getEstadoAvaluo() {
		return this.estadoAvaluo;
	}

	public void setEstadoAvaluo(BigDecimal estadoAvaluo) {
		this.estadoAvaluo = estadoAvaluo;
	}

	public String getNombreBanco() {
		return this.nombreBanco;
	}

	public void setNombreBanco(String nombreBanco) {
		this.nombreBanco = nombreBanco;
	}

	public BigDecimal getCelularSolicitante() {
		return this.celularSolicitante;
	}

	public void setCelularSolicitante(BigDecimal celularSolicitante) {
		this.celularSolicitante = celularSolicitante;
	}

	public String getCorreoSolicitante() {
		return this.correoSolicitante;
	}

	public void setCorreoSolicitante(String correoSolicitante) {
		this.correoSolicitante = correoSolicitante;
	}

	public BigDecimal getTelefonoSolicitante() {
		return this.telefonoSolicitante;
	}

	public void setTelefonoSolicitante(BigDecimal telefonoSolicitante) {
		this.telefonoSolicitante = telefonoSolicitante;
	}

	public BigDecimal getTipoInforme() {
		return this.tipoInforme;
	}

	public void setTipoInforme(BigDecimal tipoInforme) {
		this.tipoInforme = tipoInforme;
	}

	public String getTipoDocumento() {
		return this.tipoDocumento;
	}

	public void setTipoDocumento(String tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}

	public String getUbicacionGps() {
		return this.ubicacionGps;
	}

	public void setUbicacionGps(String ubicacionGps) {
		this.ubicacionGps = ubicacionGps;
	}

	public BigDecimal getIdMetodologia() {
		return this.idMetodologia;
	}

	public void setIdMetodologia(BigDecimal idMetodologia) {
		this.idMetodologia = idMetodologia;
	}

	public BigDecimal getIdObjetoAvaluo() {
		return this.idObjetoAvaluo;
	}

	public void setIdObjetoAvaluo(BigDecimal idObjetoAvaluo) {
		this.idObjetoAvaluo = idObjetoAvaluo;
	}

	public BigDecimal getIdTipoIdentificacion() {
		return this.idTipoIdentificacion;
	}

	public void setIdTipoIdentificacion(BigDecimal idTipoIdentificacion) {
		this.idTipoIdentificacion = idTipoIdentificacion;
	}

	public BigDecimal getSistemaCoordenadasBUA() {
		return sistemaCoordenadasBUA;
	}

	public void setSistemaCoordenadasBUA(BigDecimal sistemaCoordenadasBUA) {
		this.sistemaCoordenadasBUA = sistemaCoordenadasBUA;
	}

	public Date getFechaAvaluo() {
		return this.fechaAvaluo;
	}

	public void setFechaAvaluo(Date fechaAvaluo) {
		this.fechaAvaluo = fechaAvaluo;
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

	public BigDecimal getConsecutivoBanco() {
		return this.consecutivoBanco;
	}

	public void setConsecutivoBanco(BigDecimal consecutivoBanco) {
		this.consecutivoBanco = consecutivoBanco;
	}

	public String getNumeroIdentificacion() {
		return this.numeroIdentificacion;
	}

	public void setNumeroIdentificacion(String numeroIdentificacion) {
		this.numeroIdentificacion = numeroIdentificacion;
	}

	public String getBarrio() {
		return this.barrio;
	}

	public void setBarrio(String barrio) {
		this.barrio = barrio;
	}

	public String getDireccionInmueble() {
		return this.direccionInmueble;
	}

	public void setDireccionInmueble(String direccionInmueble) {
		this.direccionInmueble = direccionInmueble;
	}

	public String getJustificacion() {
		return this.justificacion;
	}

	public void setJustificacion(String justificacion) {
		this.justificacion = justificacion;
	}

	public String getLatitudSFBUA() {
		return latitudSFBUA;
	}

	public void setLatitudSFBUA(String latitudSFBUA) {
		this.latitudSFBUA = latitudSFBUA;
	}

	public String getLongitudSFBUA() {
		return longitudSFBUA;
	}

	public void setLongitudSFBUA(String longitudSFBUA) {
		this.longitudSFBUA = longitudSFBUA;
	}

	public String getNombreConjuntoEdificio() {
		return this.nombreConjuntoEdificio;
	}

	public void setNombreConjuntoEdificio(String nombreConjuntoEdificio) {
		this.nombreConjuntoEdificio = nombreConjuntoEdificio;
	}

	public String getNombreSolicitante() {
		return this.nombreSolicitante;
	}

	public void setNombreSolicitante(String nombreSolicitante) {
		this.nombreSolicitante = nombreSolicitante;
	}

	public BigDecimal getSector() {
		return this.sector;
	}

	public void setSector(BigDecimal sector) {
		this.sector = sector;
	}

	public String getSistemaCoordenadasTxtBUA() {
		return SistemaCoordenadasTxtBUA;
	}

	public void setSistemaCoordenadasTxtBUA(String sistemaCoordenadasTxtBUA) {
		SistemaCoordenadasTxtBUA = sistemaCoordenadasTxtBUA;
	}

	public String getTUsuario() {
		return this.tUsuario;
	}

	public void setTUsuario(String tUsuario) {
		this.tUsuario = tUsuario;
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

	public List<AnexoFotografico> getAnexosFotograficos() {
		return this.anexosFotograficos;
	}

	public void setAnexosFotograficos(List<AnexoFotografico> anexosFotograficos) {
		this.anexosFotograficos = anexosFotograficos;
	}
	
//	public Ciudad getCiudad() {
//		return this.ciudad;
//	}
//
//	public void setCiudad(Ciudad ciudad) {
//		this.ciudad = ciudad;
//	}
	
	public List<ComportamientoOfertaDemanda> getCompOfertaDemanda() {
		return this.compOfertaDemanda;
	}

	public void setCompOfertaDemanda(List<ComportamientoOfertaDemanda> compOfertaDemanda) {
		this.compOfertaDemanda = compOfertaDemanda;
	}
	
	public List<CondicionesSalubridad> getCondicionSalubridad() {
		return this.condicionSalubridad;
	}

	public void setCondicionSalubridad(List<CondicionesSalubridad> condicionSalubridad) {
		this.condicionSalubridad = condicionSalubridad;
	}
	
	public List<HistoricoAvaluo> getHistoricosAvaluo() {
		return this.historicosAvaluo;
	}

	public void setHistoricosAvaluo(List<HistoricoAvaluo> historicosAvaluo) {
		this.historicosAvaluo = historicosAvaluo;
	}
	
	public List<InformacionBarrio> getInformacionBarrio() {
		return this.informacionBarrio;
	}

	public void setInformacionBarrio(List<InformacionBarrio> informacionBarrio) {
		this.informacionBarrio = informacionBarrio;
	}
	
	public List<InformacionConstruccion> getInformacionConstruccion() {
		return this.informacionConstruccion;
	}

	public void setInformacionConstruccion(List<InformacionConstruccion> informacionConstruccion) {
		this.informacionConstruccion = informacionConstruccion;
	}
	
	public List<InformacionInmueble> getInformacionInmueble() {
		return this.informacionInmueble;
	}

	public void setInformacionInmueble(List<InformacionInmueble> informacionInmueble) {
		this.informacionInmueble = informacionInmueble;
	}
	
	public List<LiquidacionAvaluo> getLiquidacionAvaluos() {
		return this.liquidacionAvaluos;
	}

	public void setLiquidacionAvaluos(List<LiquidacionAvaluo> liquidacionAvaluos) {
		this.liquidacionAvaluos = liquidacionAvaluos;
	}
	
	public List<LiquidacionAvaluoTotal> getLiquidacionTotal() {
		return this.liquidacionTotal;
	}

	public void setLiquidacionTotal(List<LiquidacionAvaluoTotal> liquidacionTotal) {
		this.liquidacionTotal = liquidacionTotal;
	}
	
	public List<Observaciones> getObservacion() {
		return this.observacion;
	}

	public void setObservacion(List<Observaciones> observacion) {
		this.observacion = observacion;
	}

	public LogsGeneraArchivo getLogsGeneraArchivo() {
	    return logsGeneraArchivo;
	}

	public void setLogsGeneraArchivo(LogsGeneraArchivo logsGeneraArchivo) {
	    this.logsGeneraArchivo = logsGeneraArchivo;
	}

	public Dominios getDominioTipoIdentificacion() {
	    return dominioTipoIdentificacion;
	}

	public void setDominioTipoIdentificacion(Dominios dominioTipoIdentificacion) {
	    this.dominioTipoIdentificacion = dominioTipoIdentificacion;
	}

	public Ciudad getObjCiudad() {
	    return objCiudad;
	}

	public void setObjCiudad(Ciudad objCiudad) {
	    this.objCiudad = objCiudad;
	}

	public String getMatriculaInmobiliariaPpal1() {
	    return matriculaInmobiliariaPpal1;
	}

	public void setMatriculaInmobiliariaPpal1(String matriculaInmobiliariaPpal1) {
	    this.matriculaInmobiliariaPpal1 = matriculaInmobiliariaPpal1;
	}

	public BigDecimal getIdCiudad() {
	    return idCiudad;
	}

	public void setIdCiudad(BigDecimal idCiudad) {
	    this.idCiudad = idCiudad;
	}

	public BigDecimal getIdDepartamento() {
	    return idDepartamento;
	}

	public void setIdDepartamento(BigDecimal iddepartamento) {
	    this.idDepartamento = iddepartamento;
	}

	public Dominios getDominioMetodologia() {
	    return dominioMetodologia;
	}

	public void setDominioMetodologia(Dominios dominioMetodologia) {
	    this.dominioMetodologia = dominioMetodologia;
	}

	public BigDecimal getNumLinea() {
		return numLinea;
	}

	public void setNumLinea(BigDecimal numLinea) {
		this.numLinea = numLinea;
	}

	public String getFechaAvaluoTetxo() {
	    return fechaAvaluoTetxo;
	}

	public void setFechaAvaluoTetxo(String fechaAvaluoTetxo) {
	    this.fechaAvaluoTetxo = fechaAvaluoTetxo;
	}

}