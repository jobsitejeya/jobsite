package com.demo.myapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.util.StopWatch;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/registration")
public class RegistrationController {

	private static final Logger logger = LoggerFactory
			.getLogger(RegistrationController.class);

	private final static String REGISTRATION_PAGE = "registration/registration";
	private final static String REGISTRATION_SUBMIT_SUCCESS = "registration/submit";

	@RequestMapping("index")
	public String index() {
		logger.info(" Entering index");

		StopWatch perfWatch = new StopWatch();
		perfWatch.start();

		logger.info("----------------------Time elapsed : ",
				perfWatch.getTotalTimeMillis() + "");

		perfWatch.stop();
		return REGISTRATION_PAGE;
	}

	@RequestMapping(value="submit", method=RequestMethod.POST )
	public String submitRegistration(
			@RequestParam(value="inputEmail") String inputEmail) {

		logger.info(" Entering SubmitRegistration");

		StopWatch perfWatch = new StopWatch();
		perfWatch.start();

		logger.info("----------------------Time elapsed : ",
				perfWatch.getTotalTimeMillis() + "");

		perfWatch.stop();

		return REGISTRATION_SUBMIT_SUCCESS;
	}

}
