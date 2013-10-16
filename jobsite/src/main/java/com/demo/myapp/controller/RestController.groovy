package com.demo.myapp.controller

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import groovy.json.JsonBuilder


@Controller
@RequestMapping("/rest")
class RestController {


	@ResponseBody
	@RequestMapping(value="/simple" , method = RequestMethod.GET, produces="application/json")
	public String getJson(){

		def json = new JsonBuilder()

		json.person{ name("kumar") }

		json.toPrettyString()
	}
}
