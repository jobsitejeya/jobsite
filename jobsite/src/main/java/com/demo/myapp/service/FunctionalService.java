package com.demo.myapp.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.myapp.dao.FunctionalDAO;
import com.demo.myapp.entity.Functional;


@Service
public class FunctionalService {
	
	
	 private static final Logger logger = LoggerFactory
	            .getLogger(CityService.class);

	@Autowired
	private FunctionalDAO dao;
	
	
	public List<Functional> getAllFunctionalsByName(String name){
		logger.info("Entering getAllFunctionalsByName");
		
		List<Functional> functionals = new ArrayList<Functional>();
		
		functionals = dao.getAllFunctionalsByName(name);
		
		logger.info("Exiting getAllFunctionalsByName");
		
		return functionals;
	}
}
