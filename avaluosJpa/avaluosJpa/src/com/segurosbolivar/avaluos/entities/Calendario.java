package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import org.eclipse.persistence.annotations.Direction;
import org.eclipse.persistence.annotations.NamedStoredProcedureQuery;
import org.eclipse.persistence.annotations.StoredProcedureParameter;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_CALENDARIOS database table.
 * 
 */


@Entity
@NamedStoredProcedureQuery
(name="ejecutaCalendario",procedureName="Pkg_General_avaluos.sp_carga_sabado_domingo", returnsResultSet= false,
 parameters={@StoredProcedureParameter(direction = Direction.IN, queryParameter="panio", type=BigDecimal.class),
             @StoredProcedureParameter(direction = Direction.IN, queryParameter="pusuario", type=String.class),
             @StoredProcedureParameter(direction = Direction.OUT, queryParameter="pmensaje", type=String.class),
            }
)

@Table(name="PGB_CALENDARIOS")


@NamedQueries({@NamedQuery(name = "queryAnios", query = "select distinct c.anio from Calendario c order by c.anio"),@NamedQuery(name = "getFechas", query = "select c from Calendario c"),
@NamedQuery(name = "queryPorAnio", query = "SELECT c from Calendario c where c.fechaNoHabil between :fechainicio and :fechafin")})
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class Calendario implements Serializable {
	private static final long serialVersionUID = 1L;


	@Id
	@SequenceGenerator(name="PGB_CALENDARIOS_IDCALENDARIO_GENERATOR", sequenceName="SEQ_PGB_CALENDARIOS" , allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_CALENDARIOS_IDCALENDARIO_GENERATOR")
	@Column(name="ID_CALENDARIO", unique=true, nullable=false, precision=22)
	private BigDecimal idCalendario;

	@Column(name="ANIO", precision=22)
	private BigDecimal anio;
	
	@Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION", nullable=false)
	private Date fechaCreacion;

    @Temporal( TemporalType.DATE)
	@Column(name="FECHA_NO_HABIL", nullable=false)
	private Date fechaNoHabil;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(name="USUARIO_CREACION", nullable=false, length=15)
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;

    public Calendario() {
    }

	public BigDecimal getIdCalendario() {
		return this.idCalendario;
	}

	public void setIdCalendario(BigDecimal idCalendario) {
		this.idCalendario = idCalendario;
	}

    public BigDecimal getAnio() {
		return anio;
	}

	public void setAnio(BigDecimal anio) {
		this.anio = anio;
	}
	
	public Date getFechaCreacion() {
		return this.fechaCreacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public Date getFechaNoHabil() {
		return this.fechaNoHabil;
	}

	public void setFechaNoHabil(Date fechaNoHabil) {
		this.fechaNoHabil = fechaNoHabil;
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

}