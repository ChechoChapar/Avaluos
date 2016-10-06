package com.segurosbolivar.avaluos.entities;

import com.segurosbolivar.avaluos.util.UtilJpa;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_INFINMUEBLE database table.
 * 
 */
@Entity
@Table(name="PGB_INFINMUEBLE")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class InformacionInmueble implements Serializable {
	private static final long serialVersionUID = 1L;

	
	@PrePersist
	protected void onCreate() throws Exception {
		BigDecimal max = UtilJpa.getMaxTableValue("PGB_INFINMUEBLE","ID_INFINMUEBLE");
		/*BigDecimal seqNew = null;*/ 
		if(idInfinmueble.compareTo(max)<1)
		{
			/*BigDecimal seqNew = */
			UtilJpa.getAlterSequenceValueMaxTable(max,"SEQ_PGB_INFINMUEBLE");
			BigDecimal
			seqNew = UtilJpa.alterSequenceTable(max,"PGB_INFINMUEBLE_IDINFINMUEBLE_GENERATOR");
		   this.setIdInfinmueble(seqNew);
		}
	}	
	
	/*
	@PrePersist
	protected void onCreate() throws Exception {
		BigDecimal max = UtilJpa.getMaxTableValue("PGB_INFINMUEBLE","ID_INFINMUEBLE");
		if(idInfinmueble.compareTo(max)<1)
		{
			BigDecimal seqNew = UtilJpa.getAlterSequenceValueMaxTable(max,"SEQ_PGB_NFINMUEBLE");
		   this.setIdInfinmueble(seqNew);
		}
	}	
	*/
	
	@Id
	//Mantis 21030 Se cambio modo de asignacion de ID
	//@SequenceGenerator(name="PGB_INFINMUEBLE_IDINFINMUEBLE_GENERATOR", sequenceName="SEQ_PGB_INFINMUEBLE", allocationSize=1)
	//@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PGB_INFINMUEBLE_IDINFINMUEBLE_GENERATOR")	
	@TableGenerator(name="PGB_INFINMUEBLE_IDINFINMUEBLE_GENERATOR", allocationSize=2)
	@GeneratedValue(strategy=GenerationType.TABLE, generator="PGB_INFINMUEBLE_IDINFINMUEBLE_GENERATOR")
	@Column(name="ID_INFINMUEBLE", unique=true, nullable=false, precision=10)
	private BigDecimal idInfinmueble;

	@Column(name="C_CIUDADESCRITURA", precision=13)
	private BigDecimal ciudadEscritura;

	@Column(name="C_CLASEINMUEBLE", precision=3)
	private BigDecimal claseInmueble;

	@Column(name="C_DEPTOESCRITURA", precision=13)
	private BigDecimal departamentoEscritura;

	@Column(name="C_TIPOVIVIENDA", precision=3)
	private BigDecimal tipoVivienda;

	@Column(name="C_UBICACION2", precision=3)
	private BigDecimal ubicacion2;

	@Column(name="C_UBICACION3", precision=3)
	private BigDecimal ubicacion3;

	@Column(name="C_USOINMUEBLE", nullable=false, precision=3)
	private BigDecimal usoInmueble;
	
	@Column(name="C_USOINMUEBLE_BUA")
	private BigDecimal usoInmuebleBUA;

	@Column(name="C_USOINMUEBLE_SF")
	private BigDecimal usoInmuebleSF;

    @Temporal( TemporalType.DATE)
	@Column(name="F_FECHAESCRITURA")
	private Date fechaEscritura;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_CREACION", nullable=false)
	private Date fechaCreacion;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="FECHA_TRANSACCION", nullable=false)
	private Date fechaTransaccion;

	@Column(nullable=false, precision=3)
	private BigDecimal idCategoria;

	//
	@Column(name="T_CATASTRAL_SF")
	private String CatastralSF;

	@Column(name="T_CHIP", length=20)
	private String chip;

	@Column(name="T_MINMBPPAL1", length=20)
	private String matriculaInmobiliariaPpal1;

	@Column(name="T_MINMBPPAL2", length=20)
	private String matriculaInmobiliariaPpal2;

	@Column(name="T_MINMOBDP1", length=20)
	private String matriculaInmobiliariaDeposito1;

	@Column(name="T_MINMOBDP2", length=20)
	private String matriculaInmobiliariaDeposito2;

	@Column(name="T_MINMOBGJ1", length=20)
	private String matriculaInmobiliariaGaraje1;

	@Column(name="T_MINMOBGJ2", length=20)
	private String matriculaInmobiliariaGaraje2;

	@Column(name="T_MINMOBGJ3", length=20)
	private String matriculaInmobiliariaGaraje3;

	@Column(name="T_MINMOBGJ4", length=20)
	private String matriculaInmobiliariaGaraje4;

	@Column(name="T_MINMOBGJ5", length=20)
	private String matriculaInmobiliariaGaraje5;

	@Column(name="T_NOTARIA", length=5)
	private String notaria;

	@Column(name="T_NUMESCRITURA", length=5)
	private String numeroEscritura;

	@Column(name="T_OTROCLASE", length=30)
	private String otroClase;

	@Column(name="T_OTROUSOINM", length=30)
	private String otroUsoInmueble;

	@Column(name="USUARIO_CREACION", nullable=false, length=15)
	private String usuarioCreacion;

	@Column(name="USUARIO_TRANSACCION", nullable=false, length=15)
	private String usuarioTransaccion;
	
	@Column(name="A_EDICONSTUSO", precision=3)
	private BigDecimal ediContUso;

	//bi-directional many-to-one association to Avaluo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_AVALUO", nullable=false)
	private Avaluo avaluo;

    public InformacionInmueble() {
    }

	public BigDecimal getIdInfinmueble() {
		return this.idInfinmueble;
	}

	public void setIdInfinmueble(BigDecimal idInfinmueble) {
		this.idInfinmueble = idInfinmueble;
	}

	public BigDecimal getCiudadEscritura() {
		return this.ciudadEscritura;
	}

	public void setCiudadEscritura(BigDecimal ciudadEscritura) {
		this.ciudadEscritura = ciudadEscritura;
	}

	public BigDecimal getClaseInmueble() {
		return this.claseInmueble;
	}

	public void setClaseInmueble(BigDecimal claseInmueble) {
		this.claseInmueble = claseInmueble;
	}

	public BigDecimal getDepartamentoEscritura() {
		return this.departamentoEscritura;
	}

	public void setDepartamentoEscritura(BigDecimal departamentoEscritura) {
		this.departamentoEscritura = departamentoEscritura;
	}

	public BigDecimal getTipoVivienda() {
		return this.tipoVivienda;
	}

	public void setTipoVivienda(BigDecimal tipoVivienda) {
		this.tipoVivienda = tipoVivienda;
	}

	public BigDecimal getUbicacion2() {
		return this.ubicacion2;
	}

	public void setUbicacion2(BigDecimal ubicacion2) {
		this.ubicacion2 = ubicacion2;
	}

	public BigDecimal getUbicacion3() {
		return this.ubicacion3;
	}

	public void setUbicacion3(BigDecimal ubicacion3) {
		this.ubicacion3 = ubicacion3;
	}

	public BigDecimal getUsoInmueble() {
		return this.usoInmueble;
	}

	public void setUsoInmueble(BigDecimal usoInmueble) {
		this.usoInmueble = usoInmueble;
	}

	public BigDecimal getUsoInmuebleBUA() {
		return usoInmuebleBUA;
	}

	public void setUsoInmuebleBUA(BigDecimal usoInmuebleBUA) {
		this.usoInmuebleBUA = usoInmuebleBUA;
	}

	public BigDecimal getUsoInmuebleSF() {
		return usoInmuebleSF;
	}

	public void setUsoInmuebleSF(BigDecimal usoInmuebleSF) {
		this.usoInmuebleSF = usoInmuebleSF;
	}

	public Date getFechaEscritura() {
		return this.fechaEscritura;
	}

	public void setFechaEscritura(Date fechaEscritura) {
		this.fechaEscritura = fechaEscritura;
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

	public BigDecimal getIdCategoria() {
		return this.idCategoria;
	}

	public void setIdCategoria(BigDecimal idCategoria) {
		this.idCategoria = idCategoria;
	}

	public String getCatastralSF() {
		return CatastralSF;
	}

	public void setCatastralSF(String catastralSF) {
		CatastralSF = catastralSF;
	}

	public String getChip() {
		return this.chip;
	}

	public void setChip(String chip) {
		this.chip = chip;
	}

	public String getMatriculaInmobiliariaPpal1() {
		return this.matriculaInmobiliariaPpal1;
	}

	public void setMatriculaInmobiliariaPpal1(String matriculaInmobiliariaPpal1) {
		this.matriculaInmobiliariaPpal1 = matriculaInmobiliariaPpal1;
	}

	public String getMatriculaInmobiliariaPpal2() {
		return this.matriculaInmobiliariaPpal2;
	}

	public void setMatriculaInmobiliariaPpal2(String matriculaInmobiliariaPpal2) {
		this.matriculaInmobiliariaPpal2 = matriculaInmobiliariaPpal2;
	}

	public String getMatriculaInmobiliariaDeposito1() {
		return this.matriculaInmobiliariaDeposito1;
	}

	public void setMatriculaInmobiliariaDeposito1(String matriculaInmobiliariaDeposito1) {
		this.matriculaInmobiliariaDeposito1 = matriculaInmobiliariaDeposito1;
	}

	public String getMatriculaInmobiliariaDeposito2() {
		return this.matriculaInmobiliariaDeposito2;
	}

	public void setMatriculaInmobiliariaDeposito2(String matriculaInmobiliariaDeposito2) {
		this.matriculaInmobiliariaDeposito2 = matriculaInmobiliariaDeposito2;
	}

	public String getMatriculaInmobiliariaGaraje1() {
		return this.matriculaInmobiliariaGaraje1;
	}

	public void setMatriculaInmobiliariaGaraje1(String matriculaInmobiliariaGaraje1) {
		this.matriculaInmobiliariaGaraje1 = matriculaInmobiliariaGaraje1;
	}

	public String getMatriculaInmobiliariaGaraje2() {
		return this.matriculaInmobiliariaGaraje2;
	}

	public void setMatriculaInmobiliariaGaraje2(String matriculaInmobiliariaGaraje2) {
		this.matriculaInmobiliariaGaraje2 = matriculaInmobiliariaGaraje2;
	}

	public String getMatriculaInmobiliariaGaraje3() {
		return this.matriculaInmobiliariaGaraje3;
	}

	public void setMatriculaInmobiliariaGaraje3(String matriculaInmobiliariaGaraje3) {
		this.matriculaInmobiliariaGaraje3 = matriculaInmobiliariaGaraje3;
	}

	public String getMatriculaInmobiliariaGaraje4() {
		return this.matriculaInmobiliariaGaraje4;
	}

	public void setMatriculaInmobiliariaGaraje4(String matriculaInmobiliariaGaraje4) {
		this.matriculaInmobiliariaGaraje4 = matriculaInmobiliariaGaraje4;
	}

	public String getMatriculaInmobiliariaGaraje5() {
		return this.matriculaInmobiliariaGaraje5;
	}

	public void setMatriculaInmobiliariaGaraje5(String matriculaInmobiliariaGaraje5) {
		this.matriculaInmobiliariaGaraje5 = matriculaInmobiliariaGaraje5;
	}

	public String getNotaria() {
		return this.notaria;
	}

	public void setNotaria(String notaria) {
		this.notaria = notaria;
	}

	public String getNumeroEscritura() {
		return this.numeroEscritura;
	}

	public void setNumeroEscritura(String numeroEscritura) {
		this.numeroEscritura = numeroEscritura;
	}

	public String getOtroClase() {
		return this.otroClase;
	}

	public void setOtroClase(String otroClase) {
		this.otroClase = otroClase;
	}

	public String getOtroUsoInmueble() {
		return this.otroUsoInmueble;
	}

	public void setOtroUsoInmueble(String otroUsoInmueble) {
		this.otroUsoInmueble = otroUsoInmueble;
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

	public BigDecimal getEdiContUso() {
	    return ediContUso;
	}

	public void setEdiContUso(BigDecimal ediContUso) {
	    this.ediContUso = ediContUso;
	}
	
}