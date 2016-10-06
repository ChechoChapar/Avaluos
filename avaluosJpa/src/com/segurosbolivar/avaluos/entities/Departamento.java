package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import org.eclipse.persistence.annotations.Direction;
import org.eclipse.persistence.annotations.NamedStoredProcedureQuery;
import org.eclipse.persistence.annotations.StoredProcedureParameter;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_DEPARTAMENTOS database table.
 * 
 */
@Entity

@NamedStoredProcedureQuery
(name="sincDane",procedureName="Pkg_General_avaluos.sp_sincroniza_dane", returnsResultSet= false,
 parameters={@StoredProcedureParameter(direction = Direction.IN, queryParameter="pusuario", type=String.class),
		     @StoredProcedureParameter(direction = Direction.OUT, queryParameter="pmensaje", type=String.class),
            }
)

@Table(name="PGB_DEPARTAMENTOS")
@NamedQuery(name = "getDeptos", query = "select d  from Departamento d order by d.departamento")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class Departamento implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PGB_DEPARTAMENTOS_IDDEPARTAMENTO_GENERATOR", sequenceName="SEQ_PGB_DEPARTAMENTOS", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_DEPARTAMENTOS_IDDEPARTAMENTO_GENERATOR")
	@Column(name="ID_DEPARTAMENTO", unique=true, nullable=false, precision=22)
	private BigDecimal idDepartamento;

	@Column(name="COD_DANE", precision=22)
	private BigDecimal codDane;

	@Column(name="COD_DIVPOL", precision=22)
	private BigDecimal codDivpol;

	@Column(nullable=false, length=60)
	private String departamento;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION", nullable=false)
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="USUARIO_CREACION", nullable=false, length=15)
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;
	
	@Column(name="COD_ASOBANCARIA", precision=22)
	private BigDecimal codAsobancaria;

	//bi-directional many-to-one association to Ciudad
	@OneToMany(mappedBy="departamento")
	private List<Ciudad> ciudadesDepto;

    public Departamento() {
    }

	public BigDecimal getIdDepartamento() {
		return this.idDepartamento;
	}

	public void setIdDepartamento(BigDecimal idDepartamento) {
		this.idDepartamento = idDepartamento;
	}

	public BigDecimal getCodDane() {
		return this.codDane;
	}

	public void setCodDane(BigDecimal codDane) {
		this.codDane = codDane;
	}

	public BigDecimal getCodDivpol() {
		return this.codDivpol;
	}

	public void setCodDivpol(BigDecimal codDivpol) {
		this.codDivpol = codDivpol;
	}

	public String getDepartamento() {
		return this.departamento;
	}

	public void setDepartamento(String departamento) {
		this.departamento = departamento;
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

	public List<Ciudad> getCiudadesDepto() {
		return this.ciudadesDepto;
	}

	public void setCiudadesDepto(List<Ciudad> ciudadesDepto) {
		this.ciudadesDepto = ciudadesDepto;
	}

	public BigDecimal getCodAsobancaria() {
		return codAsobancaria;
	}

	public void setCodAsobancaria(BigDecimal codAsobancaria) {
		this.codAsobancaria = codAsobancaria;
	}
	
}