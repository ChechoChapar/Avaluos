package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_HIST_AVALUOS database table.
 * 
 */
@Entity
@Table(name="PGB_HIST_AVALUOS")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class HistoricoAvaluo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_HIST_AVALUOS_SECUENCIAHISTORICO_GENERATOR", sequenceName="SEQ_PGB_HIST_AVALUOS", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_HIST_AVALUOS_SECUENCIAHISTORICO_GENERATOR")
	@Column(name="SECUENCIA_HISTORICO", unique=true, nullable=false, precision=10)
	private BigDecimal secuenciaHistorico;

	@Column(name="A_CODBANCO", nullable=false, precision=6)
	private BigDecimal codigoBanco;

	@Column(name="A_CODDANE_CIUDAD", precision=13)
	private BigDecimal codigoDaneCiudad;

	@Column(name="A_CODDANE_DEPTO", precision=13)
	private BigDecimal codigoDaneDepto;

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

	@Column(name="A_TIPO_INFORME", precision=22)
	private BigDecimal tipoInforme;

	@Column(name="A_TIPODOCUMENTO", nullable=false, length=3)
	private String tipoDocumento;

	@Column(name="A_UBICGPS", precision=20, scale=4)
	private String ubicacionGps;

	@Column(name="C_IDCIUDAD", nullable=false, precision=13)
	private BigDecimal idCiudad;

	@Column(name="C_IDDEPARTAMENTO", nullable=false, precision=13)
	private BigDecimal idDepartamento;

	@Column(name="C_IDMETODOLOGIA", nullable=false, precision=22)
	private BigDecimal idMetodologia;

	@Column(name="C_IDOBJETOAVALUO", nullable=false, precision=22)
	private BigDecimal idObjetoAvaluo;

	@Column(name="C_IDTIPOIDENTIFICACION", nullable=false, precision=22)
	private BigDecimal idTipoIdentificacion;

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

	@Column(name="T_NOMBCONJEDIF", length=30)
	private String nombreConjuntoEdificio;

	@Column(name="T_NOMBRESOLICITANTE", nullable=false, length=30)
	private String nombreSolicitante;

	@Column(name="T_SECTOR", nullable=false, precision=3)
	private BigDecimal sector;

	@Column(name="T_USUARIO", nullable=false, length=30)
	private String usuario;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;

	@Column(name="T_MINMBPPAL1", nullable=false, length=20)
	private String matriculaInmobiliaria;
	
	@Transient
	private Ciudad objCiudad;
	
	//bi-directional many-to-one association to Avaluo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_AVALUO", nullable=false)
	private Avaluo avaluo;

    public HistoricoAvaluo() {
    }

	public BigDecimal getSecuenciaHistorico() {
		return this.secuenciaHistorico;
	}

	public void setSecuenciaHistorico(BigDecimal secuenciaHistorico) {
		this.secuenciaHistorico = secuenciaHistorico;
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

	public BigDecimal getCodigoDaneDepto() {
		return this.codigoDaneDepto;
	}

	public void setCodigoDaneDepto(BigDecimal codigoDaneDepto) {
		this.codigoDaneDepto = codigoDaneDepto;
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

	public BigDecimal getIdCiudad() {
		return this.idCiudad;
	}

	public void setIdCiudad(BigDecimal idCiudad) {
		this.idCiudad = idCiudad;
	}

	public BigDecimal getIdDepartamento() {
		return this.idDepartamento;
	}

	public void setIdDepartamento(BigDecimal idDepartamento) {
		this.idDepartamento = idDepartamento;
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

	public String getUsuario() {
		return this.usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
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

	public String getMatriculaInmobiliaria() {
		return matriculaInmobiliaria;
	}

	public void setMatriculaInmobiliaria(String matriculaInmobiliaria) {
		this.matriculaInmobiliaria = matriculaInmobiliaria;
	}

	public Ciudad getObjCiudad() {
		return objCiudad;
	}

	public void setObjCiudad(Ciudad objCiudad) {
		this.objCiudad = objCiudad;
	}
	
}