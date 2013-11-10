package com.demo.myapp.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class City {

	@Id
	private Long id;
	@Column
	private String name;
	@Column
	private String code;
	@OneToOne
	State state;

	public City() {

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

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	
	
}
