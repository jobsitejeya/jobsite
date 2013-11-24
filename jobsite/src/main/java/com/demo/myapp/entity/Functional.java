package com.demo.myapp.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@NamedQueries(@NamedQuery(name = "Functional.findAllFunctionalsByName", 
						  query = "Select F from Functional f where f.name like (:name)"))
@Entity
public class Functional {

	@Id
	private Long id;

	@Column
	private String name;

	@Column
	private String code;

	@Column
	private String description;

	public Functional() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Functional [id=" + id + ", name=" + name + ", code=" + code
				+ ", description=" + description + "]";
	}
}
