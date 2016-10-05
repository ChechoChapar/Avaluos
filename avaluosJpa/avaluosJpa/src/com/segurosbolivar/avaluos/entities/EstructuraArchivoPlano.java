package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import static org.eclipse.persistence.annotations.CacheType.NONE;


/**
 * The persistent class for the PGB_ARCHIVO_PLANO database table.
 * 
 */
@Entity
@Table(name="PGB_ARCHIVO_PLANO")
@org.eclipse.persistence.annotations.Cache(type = NONE, alwaysRefresh = true, refreshOnlyIfNewer = true)
public class EstructuraArchivoPlano implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="CONSECUTIVO_PLANO", unique=true, nullable=false, precision=3)
	private BigDecimal consecutivoPlano;

	@Column(name="COLUMNA_BD", length=200)
	private String columnaBd;

	@Column(length=100)
	private String dominio;

	@Column(name="ES_ID", length=1)
	private String esId;

	@Column(length=500)
	private String formato;

	@Column(name="OBLIGATORIEDAD_APARTAMENTO", length=300)
	private String obligatoriedadApartamento;

	@Column(name="OBLIGATORIEDAD_BODEGA", length=300)
	private String obligatoriedadBodega;

	@Column(name="OBLIGATORIEDAD_CASA", length=300)
	private String obligatoriedadCasa;

	@Column(name="OBLIGATORIEDAD_CASARURAL", length=300)
	private String obligatoriedadCasarural;

	@Column(name="OBLIGATORIEDAD_LOCAL", length=300)
	private String obligatoriedadLocal;

	@Column(name="OBLIGATORIEDAD_LOTE", length=300)
	private String obligatoriedadLote;

	@Column(name="OBLIGATORIEDAD_LOTEURBANO", length=300)
	private String obligatoriedadLoteurbano;

	@Column(name="OBLIGATORIEDAD_OFICINA", length=300)
	private String obligatoriedadOficina;

	@Column(name="TABLA_BD", length=100)
	private String tablaBd;

	@Column(name="TIPO_DATO", length=100)
	private String tipoDato;

	@Column(name="FUNCION_CONVERSION", length=1)
	private String funcionConversion;
	
	@Column(name="ES_ASOBANCARIA", length=1)
	private String esAsobancaria;
	
	@Column(name="LONGITUD_VISUAL_CAMPO", length=1)
	private BigDecimal longitudVisualCampo;
	
    public EstructuraArchivoPlano() {
    }

	public BigDecimal getConsecutivoPlano() {
		return this.consecutivoPlano;
	}

	public void setConsecutivoPlano(BigDecimal consecutivoPlano) {
		this.consecutivoPlano = consecutivoPlano;
	}

	public String getColumnaBd() {
		return this.columnaBd;
	}

	public void setColumnaBd(String columnaBd) {
		this.columnaBd = columnaBd;
	}

	public String getDominio() {
		return this.dominio;
	}

	public void setDominio(String dominio) {
		this.dominio = dominio;
	}

	public String getEsId() {
		return this.esId;
	}

	public void setEsId(String esId) {
		this.esId = esId;
	}

	public String getFormato() {
		return this.formato;
	}

	public void setFormato(String formato) {
		this.formato = formato;
	}

	public String getObligatoriedadApartamento() {
		return this.obligatoriedadApartamento;
	}

	public void setObligatoriedadApartamento(String obligatoriedadApartamento) {
		this.obligatoriedadApartamento = obligatoriedadApartamento;
	}

	public String getObligatoriedadBodega() {
		return this.obligatoriedadBodega;
	}

	public void setObligatoriedadBodega(String obligatoriedadBodega) {
		this.obligatoriedadBodega = obligatoriedadBodega;
	}

	public String getObligatoriedadCasa() {
		return this.obligatoriedadCasa;
	}

	public void setObligatoriedadCasa(String obligatoriedadCasa) {
		this.obligatoriedadCasa = obligatoriedadCasa;
	}

	public String getObligatoriedadCasarural() {
		return this.obligatoriedadCasarural;
	}

	public void setObligatoriedadCasarural(String obligatoriedadCasarural) {
		this.obligatoriedadCasarural = obligatoriedadCasarural;
	}

	public String getObligatoriedadLocal() {
		return this.obligatoriedadLocal;
	}

	public void setObligatoriedadLocal(String obligatoriedadLocal) {
		this.obligatoriedadLocal = obligatoriedadLocal;
	}

	public String getObligatoriedadLote() {
		return this.obligatoriedadLote;
	}

	public void setObligatoriedadLote(String obligatoriedadLote) {
		this.obligatoriedadLote = obligatoriedadLote;
	}

	public String getObligatoriedadLoteurbano() {
		return this.obligatoriedadLoteurbano;
	}

	public void setObligatoriedadLoteurbano(String obligatoriedadLoteurbano) {
		this.obligatoriedadLoteurbano = obligatoriedadLoteurbano;
	}

	public String getObligatoriedadOficina() {
		return this.obligatoriedadOficina;
	}

	public void setObligatoriedadOficina(String obligatoriedadOficina) {
		this.obligatoriedadOficina = obligatoriedadOficina;
	}

	public String getTablaBd() {
		return this.tablaBd;
	}

	public void setTablaBd(String tablaBd) {
		this.tablaBd = tablaBd;
	}

	public String getTipoDato() {
		return this.tipoDato;
	}

	public void setTipoDato(String tipoDato) {
		this.tipoDato = tipoDato;
	}

	public String getEsAsobancaria() {
		return esAsobancaria;
	}

	public void setEsAsobancaria(String esAsobancaria) {
		this.esAsobancaria = esAsobancaria;
	}

	public String getFuncionConversion() {
		return funcionConversion;
	}

	public void setFuncionConversion(String funcionConversion) {
		this.funcionConversion = funcionConversion;
	}

	public BigDecimal getLongitudVisualCampo() {
		return longitudVisualCampo;
	}

	public void setLongitudVisualCampo(BigDecimal longitudVisualCampo) {
		this.longitudVisualCampo = longitudVisualCampo;
	}

}