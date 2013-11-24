package com.demo.myapp.dao;

import com.demo.myapp.entity.City;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import java.util.ArrayList;
import java.util.List;


@Repository
public class CityDAO {

    private static final Logger logger = LoggerFactory
            .getLogger(CityDAO.class);

    @PersistenceContext
    private EntityManager entityManager;

    public List<City> getAllCity() {
        logger.info("called getallcity");
        List<City> cities = entityManager.createQuery("Select c from City c").getResultList();
        logger.info(" Cities : " + cities.size());
        return cities;
    }
    
    
    public List<City> getCitiesByName(String name){
    	logger.info("Entering getcititesbyname");
    	List<City> cities = new ArrayList<City>();
    	
    	cities = entityManager.createNamedQuery("City.findCityByName").setParameter("city", name+"%").getResultList();
    	logger.info("Exiting getcitiesbyname");
    	return cities;
    }
}
