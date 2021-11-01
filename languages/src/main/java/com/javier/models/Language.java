package com.javier.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="user")

public class Language {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long identifier;
	
	@Size (min=3, max=20)
	@NotNull
	private String name;
	
	@Size (min=3, max=20)
	@NotNull
	private String creator;
	
	@Size (max=100)
	@NotNull
	private String version;
	
	public Language() {}
	
	public Language(Long identifier, String name, String creator, String version) {
		this.identifier = identifier;
		this.name = name;
		this.creator = creator;
		this.version = version;
	}
	
	public Language(String name, String creator, String version) {
		this.name = name;
		this.creator = creator;
		this.version = version;
	}
	
	public Long getIdentifier() {
		return identifier;
	}

	public void setIdentifier(Long identifier) {
		this.identifier = identifier;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}
}