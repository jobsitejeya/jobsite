package com.demo.myapp.service;

import com.demo.myapp.dao.CityDAO;
import com.demo.myapp.entity.City;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CityService {
    private static final Logger logger = LoggerFactory
            .getLogger(CityService.class);
    @Autowired
    private CityDAO cityDao;

    public List<City> getAllCities() {
        logger.info("Entering getAllCities");
        List<City> cities = cityDao.getAllCity();

        return cities;
    }
    
    
    public List<City> getCityByName(String cityName){
    	logger.info("Entering get city by Name");
    	List<City> cities = cityDao.getCitiesByName(cityName);
    	logger.info("Exiting getCityByName");
    	return cities;
    }

}
