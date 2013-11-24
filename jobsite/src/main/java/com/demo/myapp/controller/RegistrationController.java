package com.demo.myapp.controller;

import com.demo.myapp.entity.City;
import com.demo.myapp.service.CityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StopWatch;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/registration")
public class RegistrationController {

	private static final Logger logger = LoggerFactory
			.getLogger(RegistrationController.class);

	private final static String REGISTRATION_PAGE = "registration/registration";
	private final static String REGISTRATION_SUBMIT_SUCCESS = "registration/submit";

	@Autowired
	private CityService cityService;

	@RequestMapping("index")
	public String index() {
		logger.info(" Entering index");

		StopWatch perfWatch = new StopWatch();
		perfWatch.start();

		perfWatch.stop();
		logger.info("----------------------Time elapsed : "
				+ perfWatch.getTotalTimeMillis() + "");

		return REGISTRATION_PAGE;
	}

	@RequestMapping(value = "submit", method = RequestMethod.POST)
	public String submitRegistration(
			@RequestParam(value = "inputEmail") String inputEmail) {

		logger.info(" Entering SubmitRegistration");

		StopWatch perfWatch = new StopWatch();
		perfWatch.start();

		logger.info("----------------------Time elapsed : ",
				perfWatch.getTotalTimeMillis() + "");

		perfWatch.stop();

		return REGISTRATION_SUBMIT_SUCCESS;
	}

	@RequestMapping("/cities")
	public @ResponseBody
	Map cities() {
		logger.info(" Entering index");

		StopWatch perfWatch = new StopWatch();
		perfWatch.start();

		List<City> cityList = cityService.getAllCities();

		logger.info(" City size : " + cityList.size());

		perfWatch.stop();
		logger.info("----------------------Time elapsed : "
				+ perfWatch.getTotalTimeMillis() + "");

		Map returnMap = new HashMap();
		returnMap.put("cities", cityList);

		return returnMap;

	}

	@RequestMapping("/citiesByName")
	public @ResponseBody
	Map citiesByName(@RequestParam("city") String cityName) {
		logger.info(" Entering index");

		StopWatch perfWatch = new StopWatch();
		perfWatch.start();

		List<City> cityList = cityService.getCityByName(cityName);

		logger.info(" City size : " + cityList.size());

		perfWatch.stop();
		logger.info("----------------------Time elapsed : "
				+ perfWatch.getTotalTimeMillis() + "");

		Map returnMap = new HashMap();
		returnMap.put("cities", cityList);

		return returnMap;

	}

}
