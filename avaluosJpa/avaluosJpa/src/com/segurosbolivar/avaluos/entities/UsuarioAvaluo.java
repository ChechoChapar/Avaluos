package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the USUARIO database table.
 * 
 */
@Entity
@Table(name="USUARIO")
@NamedQueries({@NamedQuery(name = "getUsuarios", query = "select u from UsuarioAvaluo u where u.estadoUsuario = 'A'"),@NamedQuery(name = "getNombreUsuario", query = "select u.nombreEmpleado from UsuarioAvaluo u where u.codigoUsuario = :id")})
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class UsuarioAvaluo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="CODIGO_USUARIO")
	private String codigoUsuario;

	@Column(name="CEDULA_EMPLEADO")
	private BigDecimal cedulaEmpleado;

	@Column(name="CLAVE_USUARIO")
	private String claveUsuario;

	@Column(name="COD_CIA")
	private BigDecimal codCia;

	@Column(name="CODIGO_EMPLEADO")
	private String codigoEmpleado;

	@Column(name="CODIGO_LOCALIDAD")
	private BigDecimal codigoLocalidad;

	@Column(name="CODIGO_PERFIL")
	private String codigoPerfil;

	@Column(name="CONTADOR_ACCESOS")
	private BigDecimal contadorAccesos;

	@Column(name="ESTADO_USUARIO")
	private String estadoUsuario;

    @Temporal( TemporalType.DATE)
	@Column(name="FECHA_ACTIVACION")
	private Date fechaActivacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION")
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION")
	private Date fechaTransaccion;

    @Temporal( TemporalType.DATE)
	@Column(name="FECHA_VENCIMIENTO")
	private Date fechaVencimiento;

	@Column(name="INDICADOR_NIVEL_SUPERVISION")
	private BigDecimal indicadorNivelSupervision;

	@Column(name="NOMBRE_EMPLEADO")
	private String nombreEmpleado;

	@Column(name="TELEFONO_EMPLEADO")
	private String telefonoEmpleado;

	@Column(name="USUARIO_TRANSACCION")
	private String usuarioTransaccion;

    public UsuarioAvaluo() {
    }

	public String getCodigoUsuario() {
		return this.codigoUsuario;
	}

	public void setCodigoUsuario(String codigoUsuario) {
		this.codigoUsuario = codigoUsuario;
	}

	public BigDecimal getCedulaEmpleado() {
		return this.cedulaEmpleado;
	}

	public void setCedulaEmpleado(BigDecimal cedulaEmpleado) {
		this.cedulaEmpleado = cedulaEmpleado;
	}

	public String getClaveUsuario() {
		return this.claveUsuario;
	}

	public void setClaveUsuario(String claveUsuario) {
		this.claveUsuario = claveUsuario;
	}

	public BigDecimal getCodCia() {
		return this.codCia;
	}

	public void setCodCia(BigDecimal codCia) {
		this.codCia = codCia;
	}

	public String getCodigoEmpleado() {
		return this.codigoEmpleado;
	}

	public void setCodigoEmpleado(String codigoEmpleado) {
		this.codigoEmpleado = codigoEmpleado;
	}

	public BigDecimal getCodigoLocalidad() {
		return this.codigoLocalidad;
	}

	public void setCodigoLocalidad(BigDecimal codigoLocalidad) {
		this.codigoLocalidad = codigoLocalidad;
	}

	public String getCodigoPerfil() {
		return this.codigoPerfil;
	}

	public void setCodigoPerfil(String codigoPerfil) {
		this.codigoPerfil = codigoPerfil;
	}

	public BigDecimal getContadorAccesos() {
		return this.contadorAccesos;
	}

	public void setContadorAccesos(BigDecimal contadorAccesos) {
		this.contadorAccesos = contadorAccesos;
	}

	public String getEstadoUsuario() {
		return this.estadoUsuario;
	}

	public void setEstadoUsuario(String estadoUsuario) {
		this.estadoUsuario = estadoUsuario;
	}

	public Date getFechaActivacion() {
		return this.fechaActivacion;
	}

	public void setFechaActivacion(Date fechaActivacion) {
		this.fechaActivacion = fechaActivacion;
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

	public Date getFechaVencimiento() {
		return this.fechaVencimiento;
	}

	public void setFechaVencimiento(Date fechaVencimiento) {
		this.fechaVencimiento = fechaVencimiento;
	}

	public BigDecimal getIndicadorNivelSupervision() {
		return this.indicadorNivelSupervision;
	}

	public void setIndicadorNivelSupervision(BigDecimal indicadorNivelSupervision) {
		this.indicadorNivelSupervision = indicadorNivelSupervision;
	}

	public String getNombreEmpleado() {
		return this.nombreEmpleado;
	}

	public void setNombreEmpleado(String nombreEmpleado) {
		this.nombreEmpleado = nombreEmpleado;
	}

	public String getTelefonoEmpleado() {
		return this.telefonoEmpleado;
	}

	public void setTelefonoEmpleado(String telefonoEmpleado) {
		this.telefonoEmpleado = telefonoEmpleado;
	}

	public String getUsuarioTransaccion() {
		return this.usuarioTransaccion;
	}

	public void setUsuarioTransaccion(String usuarioTransaccion) {
		this.usuarioTransaccion = usuarioTransaccion;
	}

}