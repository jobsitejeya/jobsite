package com.demo.myapp.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.myapp.service.FunctionalService;

@Controller
@RequestMapping("/util/functional")
public class FunctionalController {

	private static final Logger logger = LoggerFactory
			.getLogger(FunctionalController.class);

	@Autowired
	private FunctionalService functionalService;

	public @ResponseBody
	Map<String, Object> functionals(@RequestParam("name") String name) {

		logger.info(" Entering functionals");

		Map<String, Object> returnMap = new HashMap<String, Object>();

		returnMap.put("functionals",
				(Object)functionalService.getAllFunctionalsByName(name));

		logger.info(" Exiting functionals");

		return returnMap;
	}

}
