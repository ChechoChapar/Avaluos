package com.segurosbolivar.avaluos.entities;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.*;
import static org.eclipse.persistence.annotations.CacheType.NONE;
import static org.eclipse.persistence.annotations.CacheType.SOFT;


/**
 * The persistent class for the CG_REF_CODES database table.
 * 
 */
@Entity
@Table(name="CG_REF_CODES")
@NamedQueries({@NamedQuery(name = "getDominios", query = "select  d from Dominios d WHERE d.rvCreateBy <> \"SEGURIDAD\" order by d.rvDomain"),@NamedQuery(name = "getNombresDominios", query = "select DISTINCT d.rvDomain from Dominios d where d.rvCreateBy <> \"SEGURIDAD\" order by d.rvDomain"),
    @NamedQuery(name = "getValoresDominio", query = "select d from Dominios d WHERE d.rvDomain = :nombreDominio order by d.rvMeaning")})
@org.eclipse.persistence.annotations.Cache(alwaysRefresh = false, refreshOnlyIfNewer = true, type = SOFT)
public class Dominios implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="CG_REF_CODES_IDCGREFCODES_GENERATOR", sequenceName="SEQ_CG_REF_CODES", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="CG_REF_CODES_IDCGREFCODES_GENERATOR")
	@Column(name="ID_CG_REF_CODES")
	private BigDecimal idCgRefCodes;

	@Column(name="RV_ABBREVIATION")
	private String rvAbbreviation;

	@Column(name="RV_CREATE_BY")
	private String rvCreateBy;

	@Column(name="RV_DOMAIN")
	private String rvDomain;

	@Column(name="RV_HIGH_VALUE")
	private String rvHighValue;

	@Column(name="RV_LOW_VALUE")
	private String rvLowValue;

	@Column(name="RV_MEANING")
	private String rvMeaning;

    public Dominios() {
    }
    
    

	public Dominios(String rvDomain, String rvLowValue, String rvMeaning) {
	this.rvDomain = rvDomain;
	this.rvLowValue = rvLowValue;
	this.rvMeaning = rvMeaning;
    }



	public BigDecimal getIdCgRefCodes() {
		return this.idCgRefCodes;
	}

	public void setIdCgRefCodes(BigDecimal idCgRefCodes) {
		this.idCgRefCodes = idCgRefCodes;
	}

	public String getRvAbbreviation() {
		return this.rvAbbreviation;
	}

	public void setRvAbbreviation(String rvAbbreviation) {
		this.rvAbbreviation = rvAbbreviation;
	}

	public String getRvCreateBy() {
		return this.rvCreateBy;
	}

	public void setRvCreateBy(String rvCreateBy) {
		this.rvCreateBy = rvCreateBy;
	}

	public String getRvDomain() {
		return this.rvDomain;
	}

	public void setRvDomain(String rvDomain) {
		this.rvDomain = rvDomain;
	}

	public String getRvHighValue() {
		return this.rvHighValue;
	}

	public void setRvHighValue(String rvHighValue) {
		this.rvHighValue = rvHighValue;
	}

	public String getRvLowValue() {
		return this.rvLowValue;
	}

	public void setRvLowValue(String rvLowValue) {
		this.rvLowValue = rvLowValue;
	}

	public String getRvMeaning() {
		return this.rvMeaning;
	}

	public void setRvMeaning(String rvMeaning) {
		this.rvMeaning = rvMeaning;
	}

}