package com.demo.myapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.demo.myapp.entity.Functional;

@Repository
public class FunctionalDAO {

	private static final Logger logger = LoggerFactory
			.getLogger(FunctionalDAO.class);

	@PersistenceContext
	private EntityManager entityManager;

	public List<Functional> getAllFunctionals() {

		logger.info("Entering getallfunctionals");
		List<Functional> functionals = entityManager.createQuery(
				"Select f from Functional f").getResultList();
		logger.info("Exiting getallfunctionals");
		return functionals;
	}

	public List<Functional> getAllFunctionalsByName(String name) {

		logger.info("Entering getallfunctionals");
		List<Functional> functionals = entityManager
				.createNamedQuery("Functional.findAllFunctionalsByName")
				.setParameter("name", name + "%").getResultList();
		logger.info("Exiting getallfunctionals");
		return functionals;
	}
}
