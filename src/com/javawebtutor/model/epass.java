package com.javawebtutor.model;


import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="epass")
public class epass implements Serializable {
    
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id @GeneratedValue
    private Long id;
    private String ano;
    private String cno;
    private String name;
    private String aadr;
    private String ser;
    private String fdate;
    private String ldate;
    private String mail;

    
    
    public epass()
    {
    	
    }
    
    public epass(String ano, String cno, String name, String aadr, String ser, String fdate, String ldate,
			String mail) {
		
		this.ano = ano;
		this.cno = cno;
		this.name = name;
		this.aadr = aadr;
		this.ser = ser;
		this.fdate = fdate;
		this.ldate = ldate;
		this.mail = mail;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAno() {
		return ano;
	}
	public void setAno(String ano) {
		this.ano = ano;
	}
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAadr() {
		return aadr;
	}
	public void setAadr(String aadr) {
		this.aadr = aadr;
	}
	public String getSer() {
		return ser;
	}
	public void setSer(String ser) {
		this.ser = ser;
	}
	public String getFdate() {
		return fdate;
	}
	public void setFdate(String fdate) {
		this.fdate = fdate;
	}
	public String getLdate() {
		return ldate;
	}
	public void setLdate(String ldate) {
		this.ldate = ldate;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}

	
}