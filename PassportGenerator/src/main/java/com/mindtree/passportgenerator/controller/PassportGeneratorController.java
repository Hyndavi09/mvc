package com.mindtree.passportgenerator.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mindtree.passportgenerator.entity.User;
import com.mindtree.passportgenerator.exception.PassportGeneratorServiceException;
import com.mindtree.passportgenerator.service.PassportGeneratorService;

@Controller
public class PassportGeneratorController {
	@Autowired
	PassportGeneratorService passportGeneratorService;
	@RequestMapping("/")
	public String index()
	{
		return "index";
		
	}
	@RequestMapping("/user")
	public  String admin()
	{
		return "user";
	}
	@RequestMapping("/adduser")
	public String admin2(User user)
	{
		passportGeneratorService.addUser(user);
		return "passport";
	}
	@RequestMapping("/displayit")
	public String index3()
	{
		return "userDetails";
		
	}
	@RequestMapping("/users")
	public ModelAndView displayUsers(@RequestParam String passportNumber,Model model) throws PassportGeneratorServiceException
	{
		model.addAttribute("user",passportGeneratorService.displayUser(passportNumber));
		ModelAndView modelandview=new ModelAndView();
		modelandview.setViewName("userDetails");
		return modelandview;
		
	}
}
