package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_EMPRESAS_AVALUOS database table.
 * 
 */
@Entity
@Table(name="PGB_EMPRESAS_AVALUOS")
@NamedQuery(name = "getEmpresas", query = "select e from EmpresasAvaluos e")
@NamedNativeQueries({@NamedNativeQuery(name = "getLogoEmpresa", query = "select e.logo from pgb_empresas_avaluos e where e.id_empresa_avaluo = ?"),@NamedNativeQuery(name = "getFirmaEmpresa", query = "select e.firma from pgb_empresas_avaluos e where e.id_empresa_avaluo = ?")})
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class EmpresasAvaluos implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_EMPRESAS_AVALUOS_IDEMPRESAAVALUO_GENERATOR", sequenceName="SEQ_PGB_EMPRESAS_AVALUOS" , allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_EMPRESAS_AVALUOS_IDEMPRESAAVALUO_GENERATOR")
	@Column(name="ID_EMPRESA_AVALUO")
	private BigDecimal idEmpresaAvaluo;

	@Column(name="CARGA_ARCHIVO_PLANO")
	private String cargaArchivoPlano;

	@Column(name="DESC_EMPRESA")
	private String descEmpresa;

	private String estado;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION")
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION")
	private Date fechaTransaccion;

	@Column(name="NUMERO_DOCUMENTO")
	private BigDecimal numeroDocumento;

	@Column(name="REGISTRO_PRIVADO")
	private String registroPrivado;

	@Column(name="REGISTRO_SIC")
	private String registroSic;

	@Column(name="SUCURSAL_DAVIVIENDA")
	private BigDecimal sucursalDavivienda;

	@Column(name="TIPO_DOCUMENTO")
	private String tipoDocumento;

	@Column(name="USUARIO_CREACION")
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION")
	private String usuarioTransaccion;

	//uni-directional many-to-one association to Archivo
    @ManyToOne(fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	@JoinColumn(name="LOGO")
	private Archivo logo;

	//uni-directional many-to-one association to Archivo
    @ManyToOne(fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	@JoinColumn(name="FIRMA")
	private Archivo firma;

	//bi-directional many-to-one association to PeritosEmpresa
	@OneToMany(mappedBy="EmpresasAvaluo")
	private List<PeritosEmpresa> peritosEmpresas;

    public EmpresasAvaluos() {
    }

	public BigDecimal getIdEmpresaAvaluo() {
		return this.idEmpresaAvaluo;
	}

	public void setIdEmpresaAvaluo(BigDecimal idEmpresaAvaluo) {
		this.idEmpresaAvaluo = idEmpresaAvaluo;
	}

	public String getCargaArchivoPlano() {
		return this.cargaArchivoPlano;
	}

	public void setCargaArchivoPlano(String cargaArchivoPlano) {
		this.cargaArchivoPlano = cargaArchivoPlano;
	}

	public String getDescEmpresa() {
		return this.descEmpresa;
	}

	public void setDescEmpresa(String descEmpresa) {
		this.descEmpresa = descEmpresa;
	}

	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
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

	public BigDecimal getNumeroDocumento() {
		return this.numeroDocumento;
	}

	public void setNumeroDocumento(BigDecimal numeroDocumento) {
		this.numeroDocumento = numeroDocumento;
	}

	public String getRegistroPrivado() {
		return this.registroPrivado;
	}

	public void setRegistroPrivado(String registroPrivado) {
		this.registroPrivado = registroPrivado;
	}

	public String getRegistroSic() {
		return this.registroSic;
	}

	public void setRegistroSic(String registroSic) {
		this.registroSic = registroSic;
	}

	public BigDecimal getSucursalDavivienda() {
		return this.sucursalDavivienda;
	}

	public void setSucursalDavivienda(BigDecimal sucursalDavivienda) {
		this.sucursalDavivienda = sucursalDavivienda;
	}

	public String getTipoDocumento() {
		return this.tipoDocumento;
	}

	public void setTipoDocumento(String tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
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

	public Archivo getLogo() {
		return this.logo;
	}

	public void setLogo(Archivo logo) {
		this.logo = logo;
	}
	
	public Archivo getFirma() {
		return this.firma;
	}

	public void setFirma(Archivo firma) {
		this.firma = firma;
	}
	
	public List<PeritosEmpresa> getPeritosEmpresas() {
		return this.peritosEmpresas;
	}

	public void setPeritosEmpresas(List<PeritosEmpresa> peritosEmpresas) {
		this.peritosEmpresas = peritosEmpresas;
	}
	
}