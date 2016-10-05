package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;
import org.eclipse.persistence.annotations.ExistenceChecking;

/**
 * The persistent class for the PGB_PERITOS_EMPRESAS database table.
 * 
 */
@Entity
@Table(name="PGB_PERITOS_EMPRESAS")
@NamedQuery(name = "getPeritosEmpresa", query = "select p from PeritosEmpresa p")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class PeritosEmpresa implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_PERITOS_EMPRESAS_IDPERITOEMPRESA_GENERATOR", sequenceName="SEQ_PGB_PERITOS_EMPRESAS" , allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_PERITOS_EMPRESAS_IDPERITOEMPRESA_GENERATOR")
	@Column(name="ID_PERITO_EMPRESA")
	private BigDecimal idPeritoEmpresa;

	@Column(name="ESTADO_ASOCIACION")
	private String estadoAsociacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION")
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION")
	private Date fechaTransaccion;

	@Column(name="NUMERO_DOCUMENTO")
	private BigDecimal numeroDocumento;

	@Column(name="TIPO_DOCUMENTO")
	private String tipoDocumento;

	@Column(name="USUARIO_CREACION")
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION")
	private String usuarioTransaccion;

	//bi-directional many-to-one association to EmpresasAvaluos
    @ManyToOne
	@JoinColumn(name="ID_EMPRESA_AVALUO")
	private EmpresasAvaluos EmpresasAvaluo;

    public PeritosEmpresa() {
    }

	public BigDecimal getIdPeritoEmpresa() {
		return this.idPeritoEmpresa;
	}

	public void setIdPeritoEmpresa(BigDecimal idPeritoEmpresa) {
		this.idPeritoEmpresa = idPeritoEmpresa;
	}

	public String getEstadoAsociacion() {
		return this.estadoAsociacion;
	}

	public void setEstadoAsociacion(String estadoAsociacion) {
		this.estadoAsociacion = estadoAsociacion;
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

	public EmpresasAvaluos getEmpresasAvaluo() {
		return this.EmpresasAvaluo;
	}

	public void setEmpresasAvaluo(EmpresasAvaluos EmpresasAvaluo) {
		this.EmpresasAvaluo = EmpresasAvaluo;
		
		
		
	}
	
}