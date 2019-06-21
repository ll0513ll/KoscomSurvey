package com.survey.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MasterController {
	
	@RequestMapping(value="/master/main", method= {RequestMethod.GET,RequestMethod.POST})
	public String main() {
		return "master/login";
	}
	

	@RequestMapping(value="/master/login", method= {RequestMethod.GET,RequestMethod.POST})
	public String login() {
		return "master/add";
	}
	
	@RequestMapping(value="/master/edit", method= {RequestMethod.GET,RequestMethod.POST})
	public String edit() {
		return "master/add";
	}
	
	@RequestMapping(value="/master/cateEdit", method= {RequestMethod.GET,RequestMethod.POST})
	public String cateEdit() {
		return "master/cateEdit";
	}
	
	@RequestMapping(value="/master/cli", method= {RequestMethod.GET,RequestMethod.POST})
	public String cliSurvey(String value1,Model model) {
		
		value1 = "2019 코스콤 고객만족도 조사";
		model.addAttribute("value1", value1);
		return "master/cliSurvey";
	}
	
	@RequestMapping(value="/master/surveyManage", method= {RequestMethod.GET,RequestMethod.POST})
	public String surveyManage(String cliName,Model model) {
		
		cliName = "키움증권";
		model.addAttribute("cliName", cliName);
		return "master/surveyManage";
	}
	

}
