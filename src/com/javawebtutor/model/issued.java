package com.javawebtutor.model;


import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="issued")
public class issued implements Serializable {
    
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id @GeneratedValue
    private Long id;
    private String adrn;
    private String name;
    private String fir;
    private String las;
    
    
    
    public issued()
    {
    	
    }
    
	public issued(String adrn, String name, String fir, String las) {
		super();
		this.adrn = adrn;
		this.name = name;
		this.fir = fir;
		this.las = las;
	}
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAdrn() {
		return adrn;
	}
	public void setAdrn(String adrn) {
		this.adrn = adrn;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFir() {
		return fir;
	}
	public void setFir(String fir) {
		this.fir = fir;
	}
	public String getLas() {
		return las;
	}
	public void setLas(String las) {
		this.las = las;
	}
  
    
    
    
    
}