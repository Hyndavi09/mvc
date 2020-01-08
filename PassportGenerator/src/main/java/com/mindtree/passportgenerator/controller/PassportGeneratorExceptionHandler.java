package com.mindtree.passportgenerator.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

import com.mindtree.passportgenerator.exception.PassportNumberNotFound;

@RestControllerAdvice
public class PassportGeneratorExceptionHandler {
	@ExceptionHandler(PassportNumberNotFound.class)
	public ModelAndView UserNotFound(Exception e,Throwable t,Model model)
	{
		model.addAttribute("errormessage", e.getLocalizedMessage());
		ModelAndView modelandview =new ModelAndView();
		modelandview.setViewName("passportNotFound");
		return modelandview;
		
	}
	

}
