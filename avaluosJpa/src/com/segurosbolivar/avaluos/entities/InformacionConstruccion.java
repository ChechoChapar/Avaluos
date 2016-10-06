package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import com.segurosbolivar.avaluos.util.UtilJpa;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_INFCONSTRUCCION database table.
 * 
 */
@Entity
@Table(name="PGB_INFCONSTRUCCION")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class InformacionConstruccion implements Serializable {
	private static final long serialVersionUID = 1L;

	@PrePersist
	protected void onCreate() throws Exception {
		BigDecimal max = UtilJpa.getMaxTableValue("PGB_INFCONSTRUCCION","ID_INFCONSTRUCCION");
		if(idInformacionConstruccion.compareTo(max)<1)
		{
			BigDecimal seqNew = UtilJpa.getAlterSequenceValueMaxTable(max,"SEQ_PGB_INFCONSTRUCCION");
		   this.setIdInformacionConstruccion(seqNew);
		}
	}	
	
	@Id
	@SequenceGenerator(name="PGB_INFCONST_IDINFCONST_GENERATOR", sequenceName="SEQ_PGB_INFCONSTRUCCION", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_INFCONST_IDINFCONST_GENERATOR")
	@Column(name="ID_INFCONSTRUCCION", unique=true, nullable=false, precision=10)
	private BigDecimal idInformacionConstruccion;

	@Column(name="A_ASENTAMIENTOS", precision=3)
	private BigDecimal asentamientos;

	@Column(name="A_DANOPREVIO", precision=3)
	private BigDecimal danoPrevio;

	//
	@Column(name="A_DANOPREVIO_SF")
	private BigDecimal DanoPrevioSF;

	//
	@Column(name="A_DANOREPARADO_SF")
	private BigDecimal DanoReparadoSF;

	@Column(name="A_DCELEVTANQ", precision=3)
	private BigDecimal ubicacionTanque;

	@Column(name="A_EDIMAT", precision=22)
	private BigDecimal materialEstructura;

	@Column(name="A_EDIPARAPET", precision=3)
	private BigDecimal parapetosCubierta;

	@Column(name="A_EDIPISO", precision=4)
	private BigDecimal pisoInmueble;

	@Column(name="A_EDISIMALT", precision=3)
	private BigDecimal simetriaAltura;

	@Column(name="A_EDISIMPLANTA", precision=3)
	private BigDecimal simetriaPlanta;

	@Column(name="A_GOLPETEO", precision=3)
	private BigDecimal golpeteo;

	@Column(name="A_LUCES", precision=3)
	private BigDecimal luces;

	@Column(name="A_OTRA_UBIC_TANQUE", length=30)
	private String otraUbicacionTanque;

	@Column(name="A_OTRO_MATERIAL", length=30)
	private String otroMaterial;

	//
	@Column(name="A_RCONS_SF")
	private BigDecimal RangoConstruccionSF;

	@Column(name="A_SOBREPESO", precision=3)
	private BigDecimal sobrePeso;

	@Column(name="A_UBICFUENTESH", precision=3)
	private BigDecimal ubicacionFuentesHidricas;

	@Column(name="A_UBICNIVELZ", precision=3)
	private BigDecimal ubicacionNivelVia;

	@Column(name="C_CALIDBANIO", precision=3)
	private BigDecimal calidadBanio;

	@Column(name="C_CALIDCMADER", precision=3)
	private BigDecimal calidadMadera;

	@Column(name="C_CALIDCMETAL", precision=3)
	private BigDecimal calidMetal;

	@Column(name="C_CALIDCOCINA", precision=3)
	private BigDecimal calidadCocina;

	@Column(name="C_CALIDMURO", precision=3)
	private BigDecimal calidadMuro;

	@Column(name="C_CALIDPISO", precision=3)
	private BigDecimal calidadPiso;

	@Column(name="C_CALIDTECHO", precision=3)
	private BigDecimal calidadTecho;

	@Column(name="C_CONJAGRUPCERR", precision=3)
	private BigDecimal conjuntoAgrupacionCerrada;

	@Column(name="C_CUBIERTA", precision=3)
	private BigDecimal cubierta;

	@Column(name="C_ESTBANIOS", precision=3)
	private BigDecimal estadoBanios;

	//
	@Column(name="C_DANOPREVIO")
	private BigDecimal DanoPrevioBUA;

	//
	@Column(name="C_DETALLEMATERIAL")
	private BigDecimal DetalleMaterialSFBUA;

	@Column(name="C_ESTCOCINA", precision=3)
	private BigDecimal estadoCocina;

	@Column(name="C_ESTCONSERVACION", precision=3)
	private BigDecimal estadoConservacion;

	@Column(name="C_ESTMADERA", precision=3)
	private BigDecimal estadoMadera;

	@Column(name="C_ESTMETAL", precision=3)
	private BigDecimal estadoMetal;

	@Column(name="C_ESTMUROS", precision=3)
	private BigDecimal estadoMuros;

	@Column(name="C_ESTPISOS", precision=3)
	private BigDecimal estadoPisos;

	//
	@Column(name="C_ESTREFORZADA_SF")
	private BigDecimal EstructuraReforzadaSF;
	
	@Column(name="C_ESTRUCTURA", precision=3)
	private BigDecimal estructura;

	//
	@Column(name="C_ESTRUCTURAREFORZADA")
	private BigDecimal EstructuraReforzadaBUA;

	@Column(name="C_ESTTECHOS", precision=3)
	private BigDecimal estructuraTechos;

	@Column(name="C_FACHADA", precision=3)
	private BigDecimal fachada;

	@Column(name="C_ILUMINACION", precision=3)
	private BigDecimal iluminacion;

	//
	@Column(name="C_IRRALTURA")
	private BigDecimal IrregularidadAlturaBUA;

	//
	@Column(name="C_IRRPLANTA")
	private BigDecimal IrregularidadPlantaBUA;

	//
	@Column(name="C_MATERIAL")
	private BigDecimal MaterialConstruccionBUA;

	@Transient
	private List<Dominios> Detallemat;
	
	//
	@Column(name="C_MATERIAL_SF")
	private BigDecimal MaterialConstruccionSF;
	
	@Column(name="C_PISOSBODEGA", precision=3)
	private BigDecimal pisosBodega;

	@Column(name="C_PROPHORZ", precision=3)
	private BigDecimal propiedadHorizontal;

	//
	@Column(name="C_REPARADOS")
	private BigDecimal ReparadosBUA;

	@Column(name="C_TIPOFACHADA", precision=3)
	private BigDecimal tipoFachada;

	@Column(name="C_UBICACIONINM", precision=3)
	private BigDecimal ubicacionInmueble;

	@Column(name="C_VENTILACION", precision=3)
	private BigDecimal ventilacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION", nullable=false)
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="K_AACOND", precision=3)
	private BigDecimal aireAcondicionado;

	@Column(name="K_ASCENSOR", precision=3)
	private BigDecimal ascensor;

	@Column(name="K_BICICLETERO", precision=3)
	private BigDecimal bicicletero;

	@Column(name="K_BOMBA", precision=3)
	private BigDecimal bombaEyectora;

	@Column(name="K_CANCHAMULT", precision=3)
	private BigDecimal canchaMultiple;

	@Column(name="K_CITOFONO", precision=3)
	private BigDecimal citofono;

	@Column(name="K_CLUBHOUSE", precision=3)
	private BigDecimal clubHouse;

	@Column(name="K_ENOBRA", precision=3)
	private BigDecimal enObra;

	@Column(name="K_ESTREMODELA", precision=3)
	private BigDecimal estadoRemodelacion;

	@Column(name="K_ESTTERMINADA", precision=3)
	private BigDecimal estadoTerminadaNueva;

	@Column(name="K_ESTTERMINADO", precision=3)
	private BigDecimal estadoTerminadoUsado;

	@Column(name="K_GIMNASIO", precision=3)
	private BigDecimal gimnasio;

	@Column(name="K_GJVISITA", precision=3)
	private BigDecimal garajeVisitante;

	@Column(name="K_GOLFITO", precision=3)
	private BigDecimal golfito;

	@Column(name="K_JUEGONINOS", precision=3)
	private BigDecimal juegoNinos;

	@Column(name="K_PISCINA", precision=3)
	private BigDecimal piscina;

	@Column(name="K_PLANTA", precision=3)
	private BigDecimal planta;

	@Column(name="K_PORTERIA", precision=3)
	private BigDecimal porteria;

	@Column(name="K_PRESION", precision=3)
	private BigDecimal presion;

	@Column(name="K_SALONCOMN", precision=3)
	private BigDecimal salonComunal;

	@Column(name="K_SHUT", precision=3)
	private BigDecimal shutBasuras;

	@Column(name="K_SINTERMINAR", precision=3)
	private BigDecimal sinTerminar;

	@Column(name="K_SQUASH", precision=3)
	private BigDecimal squash;

	@Column(name="K_TANQUEAGUA", precision=3)
	private BigDecimal tanqueAgua;

	@Column(name="K_ZVERDES", precision=3)
	private BigDecimal zonasVerdes;

	//
	@Column(name="N_ANOCONSTRUCCION")
	private BigDecimal AnoConstruccionBUA;

	@Column(name="N_BAHIACOMUNAL", precision=4)
	private BigDecimal bahiaComunal;

	@Column(name="N_BALCON", precision=4)
	private BigDecimal balcon;

	@Column(name="N_BANIOPRIVADO", precision=4)
	private BigDecimal banioPrivado;

	@Column(name="N_BANIOSERVICIO", precision=4)
	private BigDecimal banioServicio;

	@Column(name="N_BANIOSOCIAL", precision=4)
	private BigDecimal banioSocial;

	@Column(name="N_BODEGA", precision=4)
	private BigDecimal bodega;

	@Column(name="N_COCINA", precision=4)
	private BigDecimal cocina;

	@Column(name="N_COMEDOR", precision=4)
	private BigDecimal comedor;

	@Column(name="N_CUARTOSERV", precision=4)
	private BigDecimal cuartoServicio;

	@Column(name="N_CUBIERTO", precision=4)
	private BigDecimal cubierto;

	@Column(name="N_DEPOSITO", precision=4)
	private BigDecimal deposito;

	@Column(name="N_DESCUBIERTO", precision=4)
	private BigDecimal descubierto;

	@Column(name="N_DOBLE", precision=4)
	private BigDecimal doble;

	@Column(name="N_ESTARHAB", precision=4)
	private BigDecimal estarHabitacion;

	@Column(name="N_ESTUDIO", precision=4)
	private BigDecimal estudio;

	@Column(name="N_HABITACIONES", precision=4)
	private BigDecimal numeroHabitaciones;

	@Column(name="N_JARDIN", precision=4)
	private BigDecimal jardin;

	@Column(name="N_LOCAL", precision=4)
	private BigDecimal local;

	@Column(name="N_NUMASCENSORES", precision=4)
	private BigDecimal numeroAscensores;

	@Column(name="N_NUMEDIF", precision=4)
	private BigDecimal numeroEdificios;

	@Column(name="N_OFICINA", precision=4)
	private BigDecimal oficina;

	@Column(name="N_PATIOINT", precision=4)
	private BigDecimal patioInterior;

	@Column(name="N_PISOS", precision=5)
	private BigDecimal pisos;

	@Column(name="N_PRIVADO", precision=4)
	private BigDecimal privado;

	@Column(name="N_SALA", precision=4)
	private BigDecimal sala;

	@Column(name="N_SENCILLO", precision=4)
	private BigDecimal sencillo;

	@Column(name="N_SERVIDUMBRE", precision=4)
	private BigDecimal servidumbre;

	@Column(name="N_SOTANOS", precision=5)
	private BigDecimal sotanos;

	@Column(name="N_TERRAZA", precision=4)
	private BigDecimal terraza;

	@Column(name="N_TOTALGARAJES", precision=4)
	private BigDecimal totalGarajes;

	@Column(name="N_TOTALUND", precision=4)
	private BigDecimal totalUnidades;

	@Column(name="N_UNDPISO", precision=4)
	private BigDecimal unidadPorPiso;

	@Column(name="N_USOEXCLUSIVO", precision=4)
	private BigDecimal usoExclusivo;

	@Column(name="N_VETUSTEZ", precision=8, scale=4)
	private BigDecimal vetustez;

	@Column(name="N_ZVERDEPRIV", precision=4)
	private BigDecimal zonaVerdePrivada;

	@Column(name="R_ESTCONS", precision=3)
	private BigDecimal estadoConstruccion;

	//
	@Column(name="SIMETRIA_ALT_SF")
	private BigDecimal SimetriaAlturaSF;

	//
	@Column(name="SIMETRIA_PLANT_SF")
	private BigDecimal SimetriaPlantaSF;

	@Column(name="T_AVANCEOBRA", precision=3)
	private BigDecimal avanceObra;

	@Column(name="T_CUBIERTA", length=30)
	private String textoCubierta;

	@Column(name="T_ESTRUCTURA", length=30)
	private String textoEstructura;

	@Column(name="T_FACHADA", length=30)
	private String textoFachada;

	@Column(name="T_OTROSDOTACION", length=30)
	private String OtrosDotacion;

	@Column(name="T_OTROSDOTACION2", length=30)
	private String otrosDotacion2;

	@Column(name="USUARIO_CREACION", nullable=false, length=15)
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;
	
	@Column(name="C_ALTURA", precision=3)
	private BigDecimal altura;

	//bi-directional many-to-one association to Avaluo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_AVALUO", nullable=false)
	private Avaluo avaluo;

    public InformacionConstruccion() {
    }

	public BigDecimal getIdInformacionConstruccion() {
		return this.idInformacionConstruccion;
	}

	public void setIdInformacionConstruccion(BigDecimal idInformacionConstruccion) {
		this.idInformacionConstruccion = idInformacionConstruccion;
	}

	public BigDecimal getAsentamientos() {
		return this.asentamientos;
	}

	public void setAsentamientos(BigDecimal asentamientos) {
		this.asentamientos = asentamientos;
	}

	public BigDecimal getDanoPrevio() {
		return this.danoPrevio;
	}

	public void setDanoPrevio(BigDecimal danoPrevio) {
		this.danoPrevio = danoPrevio;
	}

	public BigDecimal getDanoPrevioSF() {
		return DanoPrevioSF;
	}

	public void setDanoPrevioSF(BigDecimal danoPrevioSF) {
		DanoPrevioSF = danoPrevioSF;
	}

	public BigDecimal getDanoReparadoSF() {
		return DanoReparadoSF;
	}

	public void setDanoReparadoSF(BigDecimal danoReparadoSF) {
		DanoReparadoSF = danoReparadoSF;
	}

	public BigDecimal getUbicacionTanque() {
		return this.ubicacionTanque;
	}

	public void setUbicacionTanque(BigDecimal ubicacionTanque) {
		this.ubicacionTanque = ubicacionTanque;
	}

	public BigDecimal getMaterialEstructura() {
		return this.materialEstructura;
	}

	public void setMaterialEstructura(BigDecimal materialEstructura) {
		this.materialEstructura = materialEstructura;
	}

	public BigDecimal getParapetosCubierta() {
		return this.parapetosCubierta;
	}

	public void setParapetosCubierta(BigDecimal parapetosCubierta) {
		this.parapetosCubierta = parapetosCubierta;
	}

	public BigDecimal getPisoInmueble() {
		return this.pisoInmueble;
	}

	public void setPisoInmueble(BigDecimal pisoInmueble) {
		this.pisoInmueble = pisoInmueble;
	}

	public BigDecimal getSimetriaAltura() {
		return this.simetriaAltura;
	}

	public void setSimetriaAltura(BigDecimal simetriaAltura) {
		this.simetriaAltura = simetriaAltura;
	}

	public BigDecimal getSimetriaPlanta() {
		return this.simetriaPlanta;
	}

	public void setSimetriaPlanta(BigDecimal simetriaPlanta) {
		this.simetriaPlanta = simetriaPlanta;
	}

	public BigDecimal getGolpeteo() {
		return this.golpeteo;
	}

	public void setGolpeteo(BigDecimal golpeteo) {
		this.golpeteo = golpeteo;
	}

	public BigDecimal getLuces() {
		return this.luces;
	}

	public void setLuces(BigDecimal luces) {
		this.luces = luces;
	}

	public String getOtraUbicacionTanque() {
		return this.otraUbicacionTanque;
	}

	public void setOtraUbicacionTanque(String otraUbicacionTanque) {
		this.otraUbicacionTanque = otraUbicacionTanque;
	}

	public BigDecimal getRangoConstruccionSF() {
		return RangoConstruccionSF;
	}

	public void setRangoConstruccionSF(BigDecimal rangoConstruccionSF) {
		RangoConstruccionSF = rangoConstruccionSF;
	}

	public String getOtroMaterial() {
		return this.otroMaterial;
	}

	public void setOtroMaterial(String otroMaterial) {
		this.otroMaterial = otroMaterial;
	}

	public BigDecimal getSobrePeso() {
		return this.sobrePeso;
	}

	public void setSobrePeso(BigDecimal sobrePeso) {
		this.sobrePeso = sobrePeso;
	}

	public BigDecimal getUbicacionFuentesHidricas() {
		return this.ubicacionFuentesHidricas;
	}

	public void setUbicacionFuentesHidricas(BigDecimal ubicacionFuentesHidricas) {
		this.ubicacionFuentesHidricas = ubicacionFuentesHidricas;
	}

	public BigDecimal getUbicacionNivelVia() {
		return this.ubicacionNivelVia;
	}

	public void setUbicacionNivelVia(BigDecimal ubicacionNivelVia) {
		this.ubicacionNivelVia = ubicacionNivelVia;
	}

	public BigDecimal getCalidadBanio() {
		return this.calidadBanio;
	}

	public void setCalidadBanio(BigDecimal calidadBanio) {
		this.calidadBanio = calidadBanio;
	}

	public BigDecimal getCalidadMadera() {
		return this.calidadMadera;
	}

	public void setCalidadMadera(BigDecimal calidadMadera) {
		this.calidadMadera = calidadMadera;
	}

	public BigDecimal getCalidMetal() {
		return this.calidMetal;
	}

	public void setCalidMetal(BigDecimal calidMetal) {
		this.calidMetal = calidMetal;
	}

	public BigDecimal getCalidadCocina() {
		return this.calidadCocina;
	}

	public void setCalidadCocina(BigDecimal calidadCocina) {
		this.calidadCocina = calidadCocina;
	}

	public BigDecimal getCalidadMuro() {
		return this.calidadMuro;
	}

	public void setCalidadMuro(BigDecimal calidadMuro) {
		this.calidadMuro = calidadMuro;
	}

	public BigDecimal getCalidadPiso() {
		return this.calidadPiso;
	}

	public void setCalidadPiso(BigDecimal calidadPiso) {
		this.calidadPiso = calidadPiso;
	}

	public BigDecimal getCalidadTecho() {
		return this.calidadTecho;
	}

	public void setCalidadTecho(BigDecimal calidadTecho) {
		this.calidadTecho = calidadTecho;
	}

	public BigDecimal getConjuntoAgrupacionCerrada() {
		return this.conjuntoAgrupacionCerrada;
	}

	public void setConjuntoAgrupacionCerrada(BigDecimal conjuntoAgrupacionCerrada) {
		this.conjuntoAgrupacionCerrada = conjuntoAgrupacionCerrada;
	}

	public BigDecimal getCubierta() {
		return this.cubierta;
	}

	public void setCubierta(BigDecimal cubierta) {
		this.cubierta = cubierta;
	}

	public BigDecimal getEstadoBanios() {
		return this.estadoBanios;
	}

	public void setEstadoBanios(BigDecimal estadoBanios) {
		this.estadoBanios = estadoBanios;
	}

	public BigDecimal getDanoPrevioBUA() {
		return DanoPrevioBUA;
	}

	public void setDanoPrevioBUA(BigDecimal danoPrevioBUA) {
		DanoPrevioBUA = danoPrevioBUA;
	}

	public BigDecimal getDetalleMaterialSFBUA() {
		return DetalleMaterialSFBUA;
	}

	public void setDetalleMaterialSFBUA(BigDecimal detalleMaterialSFBUA) {
		DetalleMaterialSFBUA = detalleMaterialSFBUA;
	}

	public BigDecimal getEstadoCocina() {
		return this.estadoCocina;
	}

	public void setEstadoCocina(BigDecimal estadoCocina) {
		this.estadoCocina = estadoCocina;
	}

	public BigDecimal getEstadoConservacion() {
		return this.estadoConservacion;
	}

	public void setEstadoConservacion(BigDecimal estadoConservacion) {
		this.estadoConservacion = estadoConservacion;
	}

	public BigDecimal getEstadoMadera() {
		return this.estadoMadera;
	}

	public void setEstadoMadera(BigDecimal estadoMadera) {
		this.estadoMadera = estadoMadera;
	}

	public BigDecimal getEstadoMetal() {
		return this.estadoMetal;
	}

	public void setEstadoMetal(BigDecimal estadoMetal) {
		this.estadoMetal = estadoMetal;
	}

	public BigDecimal getEstadoMuros() {
		return this.estadoMuros;
	}

	public void setEstadoMuros(BigDecimal estadoMuros) {
		this.estadoMuros = estadoMuros;
	}

	public BigDecimal getEstadoPisos() {
		return this.estadoPisos;
	}

	public void setEstadoPisos(BigDecimal estadoPisos) {
		this.estadoPisos = estadoPisos;
	}

	public void setEstructuraReforzadaSF(BigDecimal estructuraReforzadaSF) {
		EstructuraReforzadaSF = estructuraReforzadaSF;
	}

	public BigDecimal getEstructuraReforzadaSF() {
		return EstructuraReforzadaSF;
	}

	public BigDecimal getEstructura() {
		return this.estructura;
	}

	public void setEstructura(BigDecimal estructura) {
		this.estructura = estructura;
	}

	public BigDecimal getEstructuraReforzadaBUA() {
		return EstructuraReforzadaBUA;
	}

	public void setEstructuraReforzadaBUA(BigDecimal estructuraReforzadaBUA) {
		EstructuraReforzadaBUA = estructuraReforzadaBUA;
	}

	public BigDecimal getEstructuraTechos() {
		return this.estructuraTechos;
	}

	public void setEstructuraTechos(BigDecimal estructuraTechos) {
		this.estructuraTechos = estructuraTechos;
	}

	public BigDecimal getFachada() {
		return this.fachada;
	}

	public void setFachada(BigDecimal fachada) {
		this.fachada = fachada;
	}

	public BigDecimal getIluminacion() {
		return this.iluminacion;
	}

	public void setIluminacion(BigDecimal iluminacion) {
		this.iluminacion = iluminacion;
	}

	public BigDecimal getIrregularidadAlturaBUA() {
		return IrregularidadAlturaBUA;
	}

	public void setIrregularidadAlturaBUA(BigDecimal irregularidadAlturaBUA) {
		IrregularidadAlturaBUA = irregularidadAlturaBUA;
	}

	public BigDecimal getIrregularidadPlantaBUA() {
		return IrregularidadPlantaBUA;
	}

	public void setIrregularidadPlantaBUA(BigDecimal irregularidadPlantaBUA) {
		IrregularidadPlantaBUA = irregularidadPlantaBUA;
	}

	public BigDecimal getMaterialConstruccionBUA() {
		return MaterialConstruccionBUA;
	}

	public void setMaterialConstruccionBUA(BigDecimal materialConstruccionBUA) {
		MaterialConstruccionBUA = materialConstruccionBUA;
	}

	public List<Dominios> getDetallemat() {
		return Detallemat;
	}

	public void setDetallemat(List<Dominios> detallemat) {
		Detallemat = detallemat;
	}

	public void setMaterialConstruccionSF(BigDecimal materialConstruccionSF) {
		MaterialConstruccionSF = materialConstruccionSF;
	}

	public BigDecimal getMaterialConstruccionSF() {
		return MaterialConstruccionSF;
	}

	public BigDecimal getPisosBodega() {
		return this.pisosBodega;
	}

	public void setPisosBodega(BigDecimal pisosBodega) {
		this.pisosBodega = pisosBodega;
	}

	public BigDecimal getPropiedadHorizontal() {
		return this.propiedadHorizontal;
	}

	public void setPropiedadHorizontal(BigDecimal propiedadHorizontal) {
		this.propiedadHorizontal = propiedadHorizontal;
	}

	public BigDecimal getReparadosBUA() {
		return ReparadosBUA;
	}

	public void setReparadosBUA(BigDecimal reparadosBUA) {
		ReparadosBUA = reparadosBUA;
	}

	public BigDecimal getTipoFachada() {
		return this.tipoFachada;
	}

	public void setTipoFachada(BigDecimal tipoFachada) {
		this.tipoFachada = tipoFachada;
	}

	public BigDecimal getUbicacionInmueble() {
		return this.ubicacionInmueble;
	}

	public void setUbicacionInmueble(BigDecimal ubicacionInmueble) {
		this.ubicacionInmueble = ubicacionInmueble;
	}

	public BigDecimal getVentilacion() {
		return this.ventilacion;
	}

	public void setVentilacion(BigDecimal ventilacion) {
		this.ventilacion = ventilacion;
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

	public BigDecimal getAireAcondicionado() {
		return this.aireAcondicionado;
	}

	public void setAireAcondicionado(BigDecimal aireAcondicionado) {
		this.aireAcondicionado = aireAcondicionado;
	}

	public BigDecimal getAscensor() {
		return this.ascensor;
	}

	public void setAscensor(BigDecimal ascensor) {
		this.ascensor = ascensor;
	}

	public BigDecimal getBicicletero() {
		return this.bicicletero;
	}

	public void setBicicletero(BigDecimal bicicletero) {
		this.bicicletero = bicicletero;
	}

	public BigDecimal getBombaEyectora() {
		return this.bombaEyectora;
	}

	public void setBombaEyectora(BigDecimal bombaEyectora) {
		this.bombaEyectora = bombaEyectora;
	}

	public BigDecimal getCanchaMultiple() {
		return this.canchaMultiple;
	}

	public void setCanchaMultiple(BigDecimal canchaMultiple) {
		this.canchaMultiple = canchaMultiple;
	}

	public BigDecimal getCitofono() {
		return this.citofono;
	}

	public void setCitofono(BigDecimal citofono) {
		this.citofono = citofono;
	}

	public BigDecimal getClubHouse() {
		return this.clubHouse;
	}

	public void setClubHouse(BigDecimal clubHouse) {
		this.clubHouse = clubHouse;
	}

	public BigDecimal getEnObra() {
		return this.enObra;
	}

	public void setEnObra(BigDecimal enObra) {
		this.enObra = enObra;
	}

	public BigDecimal getEstadoRemodelacion() {
		return this.estadoRemodelacion;
	}

	public void setEstadoRemodelacion(BigDecimal estadoRemodelacion) {
		this.estadoRemodelacion = estadoRemodelacion;
	}

	public BigDecimal getEstadoTerminadaNueva() {
		return this.estadoTerminadaNueva;
	}

	public void setEstadoTerminadaNueva(BigDecimal estadoTerminadaNueva) {
		this.estadoTerminadaNueva = estadoTerminadaNueva;
	}

	public BigDecimal getEstadoTerminadoUsado() {
		return this.estadoTerminadoUsado;
	}

	public void setEstadoTerminadoUsado(BigDecimal estadoTerminadoUsado) {
		this.estadoTerminadoUsado = estadoTerminadoUsado;
	}

	public BigDecimal getGimnasio() {
		return this.gimnasio;
	}

	public void setGimnasio(BigDecimal gimnasio) {
		this.gimnasio = gimnasio;
	}

	public BigDecimal getGarajeVisitante() {
		return this.garajeVisitante;
	}

	public void setGarajeVisitante(BigDecimal garajeVisitante) {
		this.garajeVisitante = garajeVisitante;
	}

	public BigDecimal getGolfito() {
		return this.golfito;
	}

	public void setGolfito(BigDecimal golfito) {
		this.golfito = golfito;
	}

	public BigDecimal getJuegoNinos() {
		return this.juegoNinos;
	}

	public void setJuegoNinos(BigDecimal juegoNinos) {
		this.juegoNinos = juegoNinos;
	}

	public BigDecimal getPiscina() {
		return this.piscina;
	}

	public void setPiscina(BigDecimal piscina) {
		this.piscina = piscina;
	}

	public BigDecimal getPlanta() {
		return this.planta;
	}

	public void setPlanta(BigDecimal planta) {
		this.planta = planta;
	}

	public BigDecimal getPorteria() {
		return this.porteria;
	}

	public void setPorteria(BigDecimal porteria) {
		this.porteria = porteria;
	}

	public BigDecimal getPresion() {
		return this.presion;
	}

	public void setPresion(BigDecimal presion) {
		this.presion = presion;
	}

	public BigDecimal getSalonComunal() {
		return this.salonComunal;
	}

	public void setSalonComunal(BigDecimal salonComunal) {
		this.salonComunal = salonComunal;
	}

	public BigDecimal getShutBasuras() {
		return this.shutBasuras;
	}

	public void setShutBasuras(BigDecimal shutBasuras) {
		this.shutBasuras = shutBasuras;
	}

	public BigDecimal getSinTerminar() {
		return this.sinTerminar;
	}

	public void setSinTerminar(BigDecimal sinTerminar) {
		this.sinTerminar = sinTerminar;
	}

	public BigDecimal getSquash() {
		return this.squash;
	}

	public void setSquash(BigDecimal squash) {
		this.squash = squash;
	}

	public BigDecimal getTanqueAgua() {
		return this.tanqueAgua;
	}

	public void setTanqueAgua(BigDecimal tanqueAgua) {
		this.tanqueAgua = tanqueAgua;
	}

	public BigDecimal getZonasVerdes() {
		return this.zonasVerdes;
	}

	public void setZonasVerdes(BigDecimal zonasVerdes) {
		this.zonasVerdes = zonasVerdes;
	}

	public BigDecimal getAnoConstruccionBUA() {
		return AnoConstruccionBUA;
	}

	public void setAnoConstruccionBUA(BigDecimal anoConstruccionBUA) {
		AnoConstruccionBUA = anoConstruccionBUA;
	}

	public BigDecimal getBahiaComunal() {
		return this.bahiaComunal;
	}

	public void setBahiaComunal(BigDecimal bahiaComunal) {
		this.bahiaComunal = bahiaComunal;
	}

	public BigDecimal getBalcon() {
		return this.balcon;
	}

	public void setBalcon(BigDecimal balcon) {
		this.balcon = balcon;
	}

	public BigDecimal getBanioPrivado() {
		return this.banioPrivado;
	}

	public void setBanioPrivado(BigDecimal banioPrivado) {
		this.banioPrivado = banioPrivado;
	}

	public BigDecimal getBanioServicio() {
		return this.banioServicio;
	}

	public void setBanioServicio(BigDecimal banioServicio) {
		this.banioServicio = banioServicio;
	}

	public BigDecimal getBanioSocial() {
		return this.banioSocial;
	}

	public void setBanioSocial(BigDecimal banioSocial) {
		this.banioSocial = banioSocial;
	}

	public BigDecimal getBodega() {
		return this.bodega;
	}

	public void setBodega(BigDecimal bodega) {
		this.bodega = bodega;
	}

	public BigDecimal getCocina() {
		return this.cocina;
	}

	public void setCocina(BigDecimal cocina) {
		this.cocina = cocina;
	}

	public BigDecimal getComedor() {
		return this.comedor;
	}

	public void setComedor(BigDecimal comedor) {
		this.comedor = comedor;
	}

	public BigDecimal getCuartoServicio() {
		return this.cuartoServicio;
	}

	public void setCuartoServicio(BigDecimal cuartoServicio) {
		this.cuartoServicio = cuartoServicio;
	}

	public BigDecimal getCubierto() {
		return this.cubierto;
	}

	public void setCubierto(BigDecimal cubierto) {
		this.cubierto = cubierto;
	}

	public BigDecimal getDeposito() {
		return this.deposito;
	}

	public void setDeposito(BigDecimal deposito) {
		this.deposito = deposito;
	}

	public BigDecimal getDescubierto() {
		return this.descubierto;
	}

	public void setDescubierto(BigDecimal descubierto) {
		this.descubierto = descubierto;
	}

	public BigDecimal getDoble() {
		return this.doble;
	}

	public void setDoble(BigDecimal doble) {
		this.doble = doble;
	}

	public BigDecimal getEstarHabitacion() {
		return this.estarHabitacion;
	}

	public void setEstarHabitacion(BigDecimal estarHabitacion) {
		this.estarHabitacion = estarHabitacion;
	}

	public BigDecimal getEstudio() {
		return this.estudio;
	}

	public void setEstudio(BigDecimal estudio) {
		this.estudio = estudio;
	}

	public BigDecimal getNumeroHabitaciones() {
		return this.numeroHabitaciones;
	}

	public void setNumeroHabitaciones(BigDecimal numeroHabitaciones) {
		this.numeroHabitaciones = numeroHabitaciones;
	}

	public BigDecimal getJardin() {
		return this.jardin;
	}

	public void setJardin(BigDecimal jardin) {
		this.jardin = jardin;
	}

	public BigDecimal getLocal() {
		return this.local;
	}

	public void setLocal(BigDecimal local) {
		this.local = local;
	}

	public BigDecimal getNumeroAscensores() {
		return this.numeroAscensores;
	}

	public void setNumeroAscensores(BigDecimal numeroAscensores) {
		this.numeroAscensores = numeroAscensores;
	}

	public BigDecimal getNumeroEdificios() {
		return this.numeroEdificios;
	}

	public void setNumeroEdificios(BigDecimal numeroEdificios) {
		this.numeroEdificios = numeroEdificios;
	}

	public BigDecimal getOficina() {
		return this.oficina;
	}

	public void setOficina(BigDecimal oficina) {
		this.oficina = oficina;
	}

	public BigDecimal getPatioInterior() {
		return this.patioInterior;
	}

	public void setPatioInterior(BigDecimal patioInterior) {
		this.patioInterior = patioInterior;
	}

	public BigDecimal getPisos() {
		return this.pisos;
	}

	public void setPisos(BigDecimal pisos) {
		this.pisos = pisos;
	}

	public BigDecimal getPrivado() {
		return this.privado;
	}

	public void setPrivado(BigDecimal privado) {
		this.privado = privado;
	}

	public BigDecimal getSala() {
		return this.sala;
	}

	public void setSala(BigDecimal sala) {
		this.sala = sala;
	}

	public BigDecimal getSencillo() {
		return this.sencillo;
	}

	public void setSencillo(BigDecimal sencillo) {
		this.sencillo = sencillo;
	}

	public BigDecimal getServidumbre() {
		return this.servidumbre;
	}

	public void setServidumbre(BigDecimal servidumbre) {
		this.servidumbre = servidumbre;
	}

	public BigDecimal getSotanos() {
		return this.sotanos;
	}

	public void setSotanos(BigDecimal sotanos) {
		this.sotanos = sotanos;
	}

	public BigDecimal getTerraza() {
		return this.terraza;
	}

	public void setTerraza(BigDecimal terraza) {
		this.terraza = terraza;
	}

	public BigDecimal getTotalGarajes() {
		return this.totalGarajes;
	}

	public void setTotalGarajes(BigDecimal totalGarajes) {
		this.totalGarajes = totalGarajes;
	}

	public BigDecimal getTotalUnidades() {
		return this.totalUnidades;
	}

	public void setTotalUnidades(BigDecimal totalUnidades) {
		this.totalUnidades = totalUnidades;
	}

	public BigDecimal getUnidadPorPiso() {
		return this.unidadPorPiso;
	}

	public void setUnidadPorPiso(BigDecimal unidadPorPiso) {
		this.unidadPorPiso = unidadPorPiso;
	}

	public BigDecimal getUsoExclusivo() {
		return this.usoExclusivo;
	}

	public void setUsoExclusivo(BigDecimal usoExclusivo) {
		this.usoExclusivo = usoExclusivo;
	}

	public BigDecimal getVetustez() {
		return this.vetustez;
	}

	public void setVetustez(BigDecimal vetustez) {
		this.vetustez = vetustez;
	}

	public BigDecimal getZonaVerdePrivada() {
		return this.zonaVerdePrivada;
	}

	public void setZonaVerdePrivada(BigDecimal zonaVerdePrivada) {
		this.zonaVerdePrivada = zonaVerdePrivada;
	}

	public BigDecimal getEstadoConstruccion() {
		return this.estadoConstruccion;
	}

	public void setEstadoConstruccion(BigDecimal estadoConstruccion) {
		this.estadoConstruccion = estadoConstruccion;
	}

	public BigDecimal getSimetriaAlturaSF() {
		return SimetriaAlturaSF;
	}

	public void setSimetriaAlturaSF(BigDecimal simetriaAlturaSF) {
		SimetriaAlturaSF = simetriaAlturaSF;
	}

	public BigDecimal getSimetriaPlantaSF() {
		return SimetriaPlantaSF;
	}

	public void setSimetriaPlantaSF(BigDecimal simetriaPlantaSF) {
		SimetriaPlantaSF = simetriaPlantaSF;
	}

	public BigDecimal getAvanceObra() {
		return this.avanceObra;
	}

	public void setAvanceObra(BigDecimal avanceObra) {
		this.avanceObra = avanceObra;
	}

	public String getTextoCubierta() {
		return this.textoCubierta;
	}

	public void setTextoCubierta(String cubierta) {
		this.textoCubierta = cubierta;
	}

	public String getTextoEstructura() {
		return this.textoEstructura;
	}

	public void setTextoEstructura(String estructura) {
		this.textoEstructura = estructura;
	}

	public String getTextoFachada() {
		return this.textoFachada;
	}

	public void setTextoFachada(String fachada) {
		this.textoFachada = fachada;
	}

	public String getOtrosDotacion() {
		return this.OtrosDotacion;
	}

	public void setOtrosDotacion(String OtrosDotacion) {
		this.OtrosDotacion = OtrosDotacion;
	}

	public String getOtrosDotacion2() {
		return this.otrosDotacion2;
	}

	public void setOtrosDotacion2(String otrosDotacion2) {
		this.otrosDotacion2 = otrosDotacion2;
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

	public BigDecimal getAltura() {
	    return altura;
	}

	public void setAltura(BigDecimal altura) {
	    this.altura = altura;
	}
	
}